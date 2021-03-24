DROP TABLE PROPERTY_COLLECTION CASCADE CONSTRAINTS ;

CREATE TABLE PROPERTY_COLLECTION
(
    prop_id               NUMBER (7) NOT NULL ,
    contrac_no             NUMBER (7) NOT NULL ,
    collec_type           VARCHAR2 (50) NOT NULL,
    total_collected           NUMBER (7) NOT NULL, 
    qtr_start_date            DATE NOT NULL,
    qtr_end_date              DATE NOT NULL
    
) ;

ALTER TABLE PROPERTY_COLLECTION ADD CONSTRAINT XYZ_PK PRIMARY KEY (prop_id,contrac_no,collec_type,qtr_start_date,qtr_end_date);
ALTER TABLE PROPERTY_COLLECTION ADD CONSTRAINT XYZ_FK FOREIGN KEY (prop_id) REFERENCES PROPERTY(property_id);
ALTER TABLE PROPERTY_COLLECTION ADD CONSTRAINT XYM_FK FOREIGN KEY (collec_type,contrac_no) REFERENCES COL_CONTRACT(collection_type,CONTRACT_contract_no);


insert into COUNCIL values ('City of Soda Sodi');
insert into CONTRACT values (CONTRACT_contract_no_SEQ.NEXTVAL,'01-Jan-2017','01-Dec-2017','City of Soda Sodi');
insert into COL_CONTRACT values ('Green',20,CONTRACT_contract_no_SEQ.CURRVAL);
insert into COL_CONTRACT values ('General Waste',50,CONTRACT_contract_no_SEQ.CURRVAL);
insert into COL_CONTRACT values ('Recycle',50,CONTRACT_contract_no_SEQ.CURRVAL);


select * from COUNCIL;
select * from CONTRACT;
select * from COL_CONTRACT;

insert into PROPERTY values (PROPERTY_property_id_SEQ.NEXTVAL,'Parlour Road','City of Soda Sodi');

insert into BIN values (BIN_BIN_ID_SEQ.NEXTVAL,PROPERTY_property_id_SEQ.CURRVAL,'Green',80);
insert into BIN values (BIN_BIN_ID_SEQ.NEXTVAL,PROPERTY_property_id_SEQ.CURRVAL,'General Waste',100);
insert into BIN values (BIN_BIN_ID_SEQ.NEXTVAL,PROPERTY_property_id_SEQ.CURRVAL,'Recycle',80);

insert into PROPERTY values (PROPERTY_property_id_SEQ.NEXTVAL,'Parlour Road','City of Soda Sodi');

insert into BIN values (BIN_BIN_ID_SEQ.NEXTVAL,PROPERTY_property_id_SEQ.CURRVAL,'Green',80);
insert into BIN values (BIN_BIN_ID_SEQ.NEXTVAL,PROPERTY_property_id_SEQ.CURRVAL,'General Waste',100);
insert into BIN values (BIN_BIN_ID_SEQ.NEXTVAL,PROPERTY_property_id_SEQ.CURRVAL,'Recycle',80);

select * from PROPERTY;
select * from BIN;

insert into PROPERTY_COLLECTION values (10,CONTRACT_contract_no_SEQ.CURRVAL,'Green',30,'01-Jan-2017','31-Mar-2017');
insert into PROPERTY_COLLECTION values (10,CONTRACT_contract_no_SEQ.CURRVAL,'General Waste',40,'01-Jan-2017','31-Mar-2017');
insert into PROPERTY_COLLECTION values (10,CONTRACT_contract_no_SEQ.CURRVAL,'Recycle',50,'01-Jan-2017','31-Mar-2017');

insert into PROPERTY_COLLECTION values (11,CONTRACT_contract_no_SEQ.CURRVAL,'Green',90,'01-Jan-2017','31-Mar-2017');
insert into PROPERTY_COLLECTION values (11,CONTRACT_contract_no_SEQ.CURRVAL,'General Waste',100,'01-Jan-2017','31-Mar-2017');
insert into PROPERTY_COLLECTION values (11,CONTRACT_contract_no_SEQ.CURRVAL,'Recycle',44,'01-Jan-2017','31-Mar-2017');


insert into PROPERTY_COLLECTION values (10,CONTRACT_contract_no_SEQ.CURRVAL,'Green',32,'01-April-2017','31-Jul-2017');
insert into PROPERTY_COLLECTION values (10,CONTRACT_contract_no_SEQ.CURRVAL,'General Waste',88,'01-April-2017','31-Jul-2017');
insert into PROPERTY_COLLECTION values (10,CONTRACT_contract_no_SEQ.CURRVAL,'Recycle',59,'01-April-2017','31-Jul-2017');

insert into PROPERTY_COLLECTION values (11,CONTRACT_contract_no_SEQ.CURRVAL,'Green',22,'01-April-2017','31-Jul-2017');
insert into PROPERTY_COLLECTION values (11,CONTRACT_contract_no_SEQ.CURRVAL,'General Waste',44,'01-April-2017','31-Jul-2017');
insert into PROPERTY_COLLECTION values (11,CONTRACT_contract_no_SEQ.CURRVAL,'Recycle',88,'01-April-2017','31-Jul-2017');

insert into INVOICE values (INVOICE_invoice_no_SEQ.NEXTVAL,'01-Jan-2017','31-Mar-2017',CONTRACT_contract_no_SEQ.CURRVAL);

insert into TRUCK values (TRUCK_tvi_no_SEQ.NEXTVAL,1979,'MALAYSIA','O CLASS',1910,'Y');
insert into SCHEDULE values (SCHEDULE_SCHDEULE_ID_SEQ.NEXTVAL,'02-Apr-2017',TRUCK_tvi_no_SEQ.CURRVAL,(select LICENSE_NO from DRIVER where DRIVER_NAME = 'RAFIQ'),(select LICENSE_NO from DRIVER where DRIVER_NAME = 'RAJAMIYA'));
insert into BIN_REQUEST values (BIN_REQUEST_REQUEST_ID_SEQ.NEXTVAL,'COLLECTION',10,7,'Recycle',80,SCHEDULE_SCHDEULE_ID_SEQ.CURRVAL);

insert into TRUCK values (TRUCK_tvi_no_SEQ.NEXTVAL,2000,'EUROPE','L CLASS',1910,'Y');
insert into SCHEDULE values (SCHEDULE_SCHDEULE_ID_SEQ.NEXTVAL,'02-Apr-2017',TRUCK_tvi_no_SEQ.CURRVAL,(select LICENSE_NO from DRIVER where DRIVER_NAME = 'RAFIQ'),(select LICENSE_NO from DRIVER where DRIVER_NAME = 'RAJAMIYA'));
insert into BIN_REQUEST values (BIN_REQUEST_REQUEST_ID_SEQ.NEXTVAL,'COLLECTION',11,8,'Green',80,SCHEDULE_SCHDEULE_ID_SEQ.CURRVAL);

select * from PROPERTY_COLLECTION;
select * from TRUCK;
select * from SCHEDULE;
select * from BIN_REQUEST;
commit;



