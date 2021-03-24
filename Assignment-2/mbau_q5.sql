/* Here I am trying to reflect a situation for task 5. The council name "City of Far Out" has changed its municipal boundary and has become smaller.
So the street "900 Lakhan RD" has now come under the municipal boundary of "City Of Bliss Land" . So all the properties under "900 Lakhan RD" under 
"City of Far Out" will move into the new council "City of Bliss Land"*/

UPDATE PROPERTY
SET COUNCIL_COUNCIL_NAME = 'City of Bliss Land'
WHERE PROPERTY_ADDRESS = '900 Lakhan RD';

select * from PROPERTY;

commit;