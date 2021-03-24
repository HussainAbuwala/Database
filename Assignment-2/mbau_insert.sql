insert into COUNCIL values ('City of Glen Eira');
insert into COUNCIL values ('City of En Carden');
insert into COUNCIL values ('City of Bliss Land');
insert into COUNCIL values ('City of Far Out');
select * from COUNCIL;

insert into BIN_TYPE values ('Green',80);
insert into BIN_TYPE values ('Green',40);
insert into BIN_TYPE values ('Recycle',80);
insert into BIN_TYPE values ('General Waste',100);
select * from BIN_TYPE;

insert into CONTRACT values (CONTRACT_contract_no_SEQ.NEXTVAL,'01-Jan-2017','01-Dec-2017','City of Glen Eira');

insert into INVOICE values (INVOICE_invoice_no_SEQ.NEXTVAL,'01-Jan-2017','31-Mar-2017',CONTRACT_contract_no_SEQ.CURRVAL);
insert into COL_CONTRACT values ('Green',10,CONTRACT_contract_no_SEQ.CURRVAL);
insert into BIN_CONTRACT values (20,CONTRACT_contract_no_SEQ.CURRVAL,'Green','80');

select * from CONTRACT;
select * from INVOICE;
select * from COL_CONTRACT;
select * from BIN_CONTRACT;

insert into CONTRACT values (CONTRACT_contract_no_SEQ.NEXTVAL,'01-Feb-2017','01-Dec-2017','City of En Carden');

insert into INVOICE values (INVOICE_invoice_no_SEQ.NEXTVAL,'01-Feb-2017','31-Mar-2017',CONTRACT_contract_no_SEQ.CURRVAL);
insert into COL_CONTRACT values ('Recycle',10,CONTRACT_contract_no_SEQ.CURRVAL);
insert into BIN_CONTRACT values (20,CONTRACT_contract_no_SEQ.CURRVAL,'General Waste','100');

select * from CONTRACT;
select * from INVOICE;
select * from COL_CONTRACT;
select * from BIN_CONTRACT;

insert into CONTRACT values (CONTRACT_contract_no_SEQ.NEXTVAL,'01-Mar-2017','01-Dec-2017','City of Bliss Land');

insert into INVOICE values (INVOICE_invoice_no_SEQ.NEXTVAL,'01-Mar-2017','31-Jul-2017',CONTRACT_contract_no_SEQ.CURRVAL);
insert into COL_CONTRACT values ('Green',90,CONTRACT_contract_no_SEQ.CURRVAL);
insert into BIN_CONTRACT values (20,CONTRACT_contract_no_SEQ.CURRVAL,'General Waste','100');

select * from CONTRACT;
select * from INVOICE;
select * from COL_CONTRACT;
select * from BIN_CONTRACT;

insert into CONTRACT values (CONTRACT_contract_no_SEQ.NEXTVAL,'01-Apr-2017','01-Dec-2017','City of Far Out');

insert into INVOICE values (INVOICE_invoice_no_SEQ.NEXTVAL,'01-Apr-2017','31-Aug-2017',CONTRACT_contract_no_SEQ.CURRVAL);
insert into COL_CONTRACT values ('Recycle',79,CONTRACT_contract_no_SEQ.CURRVAL);
insert into BIN_CONTRACT values (20,CONTRACT_contract_no_SEQ.CURRVAL,'Recycle',80);

select * from CONTRACT;
select * from INVOICE;
select * from COL_CONTRACT;
select * from BIN_CONTRACT;

insert into PROPERTY values (PROPERTY_property_id_SEQ.NEXTVAL,'900 Dandenong RD','City of Glen Eira');

insert into DRIVER values (DRIVER_LICENSE_NO_SEQ.NEXTVAL,'RAFIQ','01-Apr-1990',23456,'Aponibash Nasirabad Road-2');
insert into DRIVER values (DRIVER_LICENSE_NO_SEQ.NEXTVAL,'FARUK','01-Jan-1990',12345,'Sanmar Ocean Road-2');
insert into DRIVER values (DRIVER_LICENSE_NO_SEQ.NEXTVAL,'RAJAMIYA','01-Dec-1980',89911,'Kajir Dewri Road-3');
insert into DRIVER values (DRIVER_LICENSE_NO_SEQ.NEXTVAL,'MOSTAFA','01-Mar-1990',34222,'Stadium Road Falahar');

insert into TRUCK values (TRUCK_tvi_no_SEQ.NEXTVAL,5679,'GERMANY','S CLASS',1990,'Y');
insert into SCHEDULE values (SCHEDULE_SCHDEULE_ID_SEQ.NEXTVAL,'01-Apr-2017',TRUCK_tvi_no_SEQ.CURRVAL,(select LICENSE_NO from DRIVER where DRIVER_NAME = 'RAFIQ'),(select LICENSE_NO from DRIVER where DRIVER_NAME = 'FARUK'));
insert into BIN values (BIN_BIN_ID_SEQ.NEXTVAL,PROPERTY_property_id_SEQ.CURRVAL,'Green',80);

insert into BIN_REQUEST values (BIN_REQUEST_REQUEST_ID_SEQ.NEXTVAL,'DELIVERY',PROPERTY_property_id_SEQ.CURRVAL,BIN_BIN_ID_SEQ.CURRVAL,'Green',80,SCHEDULE_SCHDEULE_ID_SEQ.CURRVAL);

select * from PROPERTY;
select * from DRIVER;
select * from TRUCK;
select * from SCHEDULE;
select * from BIN;
select * from BIN_REQUEST;

insert into PROPERTY values (PROPERTY_property_id_SEQ.NEXTVAL,'900 Fola RD','City of En Carden');
insert into TRUCK values (TRUCK_tvi_no_SEQ.NEXTVAL,1679,'USA','B CLASS',1910,'Y');
insert into SCHEDULE values (SCHEDULE_SCHDEULE_ID_SEQ.NEXTVAL,'02-Apr-2017',TRUCK_tvi_no_SEQ.CURRVAL,(select LICENSE_NO from DRIVER where DRIVER_NAME = 'RAFIQ'),(select LICENSE_NO from DRIVER where DRIVER_NAME = 'RAJAMIYA'));
insert into BIN values (BIN_BIN_ID_SEQ.NEXTVAL,PROPERTY_property_id_SEQ.CURRVAL,'Recycle',80);
insert into BIN_REQUEST values (BIN_REQUEST_REQUEST_ID_SEQ.NEXTVAL,'COLLECTION',PROPERTY_property_id_SEQ.CURRVAL,BIN_BIN_ID_SEQ.CURRVAL,'Recycle',80,SCHEDULE_SCHDEULE_ID_SEQ.CURRVAL);

select * from PROPERTY;
select * from TRUCK;
select * from SCHEDULE;
select * from BIN;
select * from BIN_REQUEST;

insert into PROPERTY values (PROPERTY_property_id_SEQ.NEXTVAL,'900 Mada RD','City of Bliss Land');
insert into TRUCK values (TRUCK_tvi_no_SEQ.NEXTVAL,1079,'BANGLADESH','D CLASS',1900,'Y');
insert into SCHEDULE values (SCHEDULE_SCHDEULE_ID_SEQ.NEXTVAL,'03-Apr-2017',TRUCK_tvi_no_SEQ.CURRVAL,(select LICENSE_NO from DRIVER where DRIVER_NAME = 'FARUK'),(select LICENSE_NO from DRIVER where DRIVER_NAME = 'RAJAMIYA'));
insert into BIN values (BIN_BIN_ID_SEQ.NEXTVAL,PROPERTY_property_id_SEQ.CURRVAL,'General Waste',100);
insert into BIN_REQUEST values (BIN_REQUEST_REQUEST_ID_SEQ.NEXTVAL,'COLLECTION',PROPERTY_property_id_SEQ.CURRVAL,BIN_BIN_ID_SEQ.CURRVAL,'General Waste',100,SCHEDULE_SCHDEULE_ID_SEQ.CURRVAL);

select * from PROPERTY;
select * from TRUCK;
select * from SCHEDULE;
select * from BIN;
select * from BIN_REQUEST;

insert into PROPERTY values (PROPERTY_property_id_SEQ.NEXTVAL,'900 Lakhan RD','City of Far Out');
insert into TRUCK values (TRUCK_tvi_no_SEQ.NEXTVAL,1000,'INDIA','L CLASS',1980,'Y');
insert into SCHEDULE values (SCHEDULE_SCHDEULE_ID_SEQ.NEXTVAL,'03-Apr-2017',TRUCK_tvi_no_SEQ.CURRVAL,(select LICENSE_NO from DRIVER where DRIVER_NAME = 'MOSTAFA'),(select LICENSE_NO from DRIVER where DRIVER_NAME = 'RAJAMIYA'));
insert into BIN values (BIN_BIN_ID_SEQ.NEXTVAL,PROPERTY_property_id_SEQ.CURRVAL,'Green',40);
insert into BIN_REQUEST values (BIN_REQUEST_REQUEST_ID_SEQ.NEXTVAL,'COLLECTION',PROPERTY_property_id_SEQ.CURRVAL,BIN_BIN_ID_SEQ.CURRVAL,'Green',40,SCHEDULE_SCHDEULE_ID_SEQ.CURRVAL);

select * from PROPERTY;
select * from TRUCK;
select * from SCHEDULE;
select * from BIN;
select * from BIN_REQUEST;

/* Here For task 4, i am adding properties which fall at the same address. I have already added data about the properties with combination of an address with a single property.*/
insert into PROPERTY values (PROPERTY_property_id_SEQ.NEXTVAL,'900 Lakhan RD','City of Far Out');
insert into PROPERTY values (PROPERTY_property_id_SEQ.NEXTVAL,'900 Lakhan RD','City of Far Out');
insert into PROPERTY values (PROPERTY_property_id_SEQ.NEXTVAL,'900 Lakhan RD','City of Far Out');
insert into PROPERTY values (PROPERTY_property_id_SEQ.NEXTVAL,'900 Lakhan RD','City of Far Out');
insert into PROPERTY values (PROPERTY_property_id_SEQ.NEXTVAL,'Jubilee Road','City of Far Out');

/* Here I am trying to reflect a situation for task 5. The council name "City of Far Out" has changed its municipal boundary and has become smaller.
So the street "900 Lakhan RD" has now come under the municipal boundary of "City Of Bliss Land" . So all the properties under "900 Lakhan RD" under 
"City of Far Out" will move into the new council "City of Bliss Land"*/
select * from PROPERTY;
commit;



