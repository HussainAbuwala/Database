/*

When a building is demolished where multiple properties are present, the tables which would be affected are,

-- PROPERTY
-- BIN
-- BIN_REQUEST
-- PROPERTY_COLLECTION

In mbau_q6a.sql, i have inserted records in the above tables and other tables to create a scenario that will affect the tables which are related to the 
demolished property.

In the "BIN" table all records which have the demolished properties will need to be deleted.
In the "BIN_REQUEST" table all records which have the demolished properties will need to be deleted.
In the "PROPERTY_COLLECTION" table, records related to the demolished property can be deleted if and only if that recrod has been already
  invoiced in the "INVOICE" table. That is if that record is included in the "INVOICE" table. Else
  that record in the "PROPERTY_COLLECTION" table cannot be deleted.

So i have created a scenario where a building has been demolished where "Property_ID" 10 AND 11 ARE PRESENT.Basically two properties are present
  in the same location of the demolished building. The steps that will reflect the changes to the structure of the database are shown below:
  
  1:  Delete all records in "BIN_REQUEST" table which have "Property_ID" = 10 and "Property_ID" = 11 if any.
  2:  Delete all records in "BIN" table which have "Property_ID" = 10 and "Property_ID" = 11 if any.
  3:  Delete each record in "PROPERTY_COLLECTION" table if each record exists in "INVOICE" table.
  
  Deleting records from the "PROPERTY" table depends on the fact that are their any child exist of the "PROPERTY" table's primary that is referencing the
  primary key of the parent table "PROPERTY". For example, in the "PROPERTY_COLLECTION", there may be collection records of a specific property that still exists,
  so that property cannot be deleted from the "Property" table.
  
  Also deletion of records relating to the demolished properties in the "BIN" table and the "BIN_REQUEST" table depend on how the "MBAU" company deals with the
  records. They may want to keep records in the "BIN_REQUESt" table of the demolished property if there has been a request for "REPLACEMENT" of the bin if it was
  faulty. This would help the company know that even if the property is demolished, there was a faulty bin associated with that property and that bin needs to be
  taken care of regardless of the property being demolished.
  
  With the records in the "BIN" table where there are bins associated with a specfic property, they may allocate that bin to a different property, so rather than
  deleting the record, they may change the "demolished" property attached to that bin to a new property.
  
  Also deleting records from the "PROPERTY_COLLECTION" table depends totally on the company. They may want to keep the collection records as they will produce a
  report for the "council" so that the council can use that information to charge the residents based on the volume of rubbish which is collected.
  
*/

--: 1:--------------------------------------------------------------------
select * from BIN_REQUEST;

DELETE FROM BIN_REQUEST
WHERE PROPERTY_property_id= 10;

DELETE FROM BIN_REQUEST
WHERE PROPERTY_property_id= 11;

select * from BIN_REQUEST;

--: 2:--------------------------------------------------------------------
select * from BIN;

DELETE FROM BIN
WHERE PROPERTY_property_id= 10;

DELETE FROM BIN
WHERE PROPERTY_property_id= 11;

select * from BIN;

--: 3:--------------------------------------------------------------------
select * from PROPERTY_COLLECTION;

DELETE FROM PROPERTY_COLLECTION
WHERE EXISTS
  ( SELECT *
    FROM INVOICE
    WHERE PROPERTY_COLLECTION.contrac_no = INVOICE.CONTRACT_contract_no
    AND  PROPERTY_COLLECTION.qtr_start_date = INVOICE.qtr_start_date AND PROPERTY_COLLECTION.qtr_end_date = INVOICE.qtr_end_date);

select * from PROPERTY_COLLECTION;

commit;

