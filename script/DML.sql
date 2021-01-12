use CarcrashOp;

INSERT INTO Carcrash.people_info (PERSON_ID,SEX,AGE)
(SELECT 
PERSON_ID,SEX,AGE 
FROM traffic_people);
SELECT * FROM Carcrash.people_info;

INSERT INTO Carcrash.people_condition (PERSON_ID,PHYSICAL_CONDITION,BAC_RESULT,BAC_RESULT_VALUE)
(SELECT 
PERSON_ID,PHYSICAL_CONDITION,BAC_RESULT,`BAC_RESULT VALUE`
FROM traffic_people);
SELECT * FROM Carcrash.people_condition;

INSERT INTO Carcrash.people_in_crash (PERSON_ID,PERSON_TYPE,SAFETY_EQUIPMENT,AIRBAGE_DEPLOYED,DRIVER_ACTION,DRIVER_VISION,PHYSICAL_CONDITION,VEHICLE_ID)
(SELECT PERSON_ID,PERSON_TYPE,SAFETY_EQUIPMENT,AIRBAG_DEPLOYED,DRIVER_ACTION,DRIVER_VISION,PHYSICAL_CONDITION,VEHICLE_ID
FROM traffic_people);
SELECT * FROM Carcrash.people_in_crash;

INSERT INTO Carcrash.injury_info (PERSON_ID, INJURY_CLASSIFICATION)
(SELECT PERSON_ID, INJURY_CLASSIFICATION
FROM traffic_people);
SELECT * FROM Carcrash.injury_info;

INSERT INTO Carcrash.vehicle_info (CRASH_UNIT_ID,UNIT_TYPE,NUMBER_OF_PASSENGER,VEHICLE_ID,MANEUVER,EXCEED_SPEED_LIMIT)
(SELECT CRASH_UNIT_ID,UNIT_TYPE,NUM_PASSENGERS,VEHICLE_ID,MANEUVER,EXCEED_SPEED_LIMIT_I
FROM traffic_vehicles);
SELECT * FROM Carcrash.vehicle_info;

INSERT INTO Carcrash.car_info (VEHICLE_ID,MAKE,MODEL,VEHICLE_YEAR,VEHICLE_DEFECT)
(SELECT distinct(VEHICLE_ID),MAKE,MODEL,VEHICLE_YEAR,VEHICLE_DEFECT
FROM traffic_vehicles
WHERE VEHICLE_ID!=0);
SELECT * FROM Carcrash.car_info;

INSERT INTO Carcrash.road_info (CRASH_RECORD_ID,POSTED_SPEED,TRAFFICE_CONTROL_DEVICE,DEVICE_CONDITION,WEATHER_CONDITION,LIGHTING_CONDITION,TRAFFICWAY_TYPE,ALIGNMENT,ROAD_SURFACE_COND,ROAD_DEFECT)
(SELECT CRASH_RECORD_ID,POSTED_SPEED_LIMIT,TRAFFIC_CONTROL_DEVICE,DEVICE_CONDITION,WEATHER_CONDITION,LIGHTING_CONDITION,TRAFFICWAY_TYPE,ALIGNMENT,ROADWAY_SURFACE_COND,ROAD_DEFECT
FROM traffic_crashes);
SELECT * FROM Carcrash.road_info;

INSERT INTO Carcrash.crash_info (CRASH_RECORD_ID,CRASH_TYPE,INTERSECTION_RELATED,NOT_RIGHT_OF_WAY,HIT_AND_RUN,DAMAGE,PRIMARY_CAUSE,SECONDARY_CAUSE,DOORING,NUM_UNITS,`DATE`,`HOUR`,LATITUDE,LONGTITUDE)
(SELECT CRASH_RECORD_ID,CRASH_TYPE,INTERSECTION_RELATED_I,NOT_RIGHT_OF_WAY_I,HIT_AND_RUN_I,DAMAGE,PRIM_CONTRIBUTORY_CAUSE,SEC_CONTRIBUTORY_CAUSE,DOORING_I,NUM_UNITS, SUBSTRING(CRASH_DATE,1,10),CRASH_HOUR,LATITUDE,LONGITUDE
FROM traffic_crashes);
SELECT * FROM Carcrash.crash_info;

use CarcrashOp;
create table community like Carcrash.location_data;
insert community select * from Carcrash.location_data;

INSERT INTO Carcrash.FACT (CRASH_RECORD_ID,CRASH_UNIT_ID,PERSON_ID,VEHICLE_ID)
(SELECT a.CRASH_RECORD_ID,b.CRASH_UNIT_ID,a.PERSON_ID,b.VEHICLE_ID
FROM traffic_people a
INNER JOIN traffic_vehicles b ON a.CRASH_RECORD_ID COLLATE utf8mb4_general_ci =b.CRASH_RECORD_ID COLLATE utf8mb4_general_ci);
