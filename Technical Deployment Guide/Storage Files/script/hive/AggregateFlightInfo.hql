SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode = nonstrict;
set hive.cli.print.header=true;

DROP TABLE if exists pmsampleinputHour1;
CREATE EXTERNAL TABLE pmsampleinputHour1 (
  processed string,
  id string, 
  cycle string,
  counter string,
  endofcycle string,
  setting1 string,
  setting2 string,
  setting3 string,
  s1 string,
  s2 string,
  s3 string,
  s4 string,
  s5 string,
  s6 string,
  s7 string,
  s8 string,
  s9 string,
  s10 string,
  s11 string,
  s12 string,
  s13 string,
  s14 string,
  s15 string,
  s16 string,
  s17 string,
  s18 string,
  s19 string,
  s20 string,
  s21 string)
--partitioned by (`date` string, `hour` int)  
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE LOCATION '${hiveconf:RAWINPUT}/date=${hiveconf:Date1}/hour=${hiveconf:Hour1}'
TBLPROPERTIES("skip.header.line.count"="1");

DROP TABLE if exists pmsampleinputHour2;
CREATE EXTERNAL TABLE pmsampleinputHour2 (
  processed string,
  id string, 
  cycle string,
  counter string,
  endofcycle string,
  setting1 string,
  setting2 string,
  setting3 string,
  s1 string,
  s2 string,
  s3 string,
  s4 string,
  s5 string,
  s6 string,
  s7 string,
  s8 string,
  s9 string,
  s10 string,
  s11 string,
  s12 string,
  s13 string,
  s14 string,
  s15 string,
  s16 string,
  s17 string,
  s18 string,
  s19 string,
  s20 string,
  s21 string)
--partitioned by (`date` string, `hour` int)  
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE LOCATION '${hiveconf:RAWINPUT}/date=${hiveconf:Date2}/hour=${hiveconf:Hour2}'
TBLPROPERTIES("skip.header.line.count"="1");

DROP TABLE if exists pmsampleinputHour3;
CREATE EXTERNAL TABLE pmsampleinputHour3 (
  processed string,
  id string, 
  cycle string,
  counter string,
  endofcycle string,
  setting1 string,
  setting2 string,
  setting3 string,
  s1 string,
  s2 string,
  s3 string,
  s4 string,
  s5 string,
  s6 string,
  s7 string,
  s8 string,
  s9 string,
  s10 string,
  s11 string,
  s12 string,
  s13 string,
  s14 string,
  s15 string,
  s16 string,
  s17 string,
  s18 string,
  s19 string,
  s20 string,
  s21 string)
--partitioned by (`date` string, `hour` int)  
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE LOCATION '${hiveconf:RAWINPUT}/date=${hiveconf:Date3}/hour=${hiveconf:Hour3}'
TBLPROPERTIES("skip.header.line.count"="1");

-- create a table to extract information for each id, each cycle
drop table if exists rawcycleinfo;
CREATE EXTERNAL TABLE rawcycleinfo (
  aggregatedt timestamp,
  id INT, 
  cycle INT,
  endofcycle INT,
  counter INT,
  setting1 FLOAT,
  setting2 FLOAT,
  setting3 FLOAT,
  s1 FLOAT,
  s2 FLOAT,
  s3 FLOAT,
  s4 FLOAT,
  s5 FLOAT,
  s6 FLOAT,
  s7 FLOAT,
  s8 FLOAT,
  s9 FLOAT,
  s10 FLOAT,
  s11 FLOAT,
  s12 FLOAT,
  s13 FLOAT,
  s14 FLOAT,
  s15 FLOAT,
  s16 FLOAT,
  s17 FLOAT,
  s18 FLOAT,
  s19 FLOAT,
  s20 FLOAT,
  s21 FLOAT)
partitioned by (`date` string, `hour` int) 
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE LOCATION '${hiveconf:AGGREGATEDOUTPUT}';

insert OVERWRITE TABLE rawcycleinfo PARTITION (`date`, `hour`)
SELECT
  concat('${hiveconf:CurrentDate}', ' ', lpad('${hiveconf:CurrentHour}', 2, '0') ,':00:00') as aggregatedt,
  id, 
  cycle,
  sum(endofcycle) as endofcycle,
  count(*) as Counter,
  SUM(setting1) AS setting1,
  SUM(setting2)  AS setting2,
  SUM(setting3) AS setting3,
  SUM(s1) AS s1,
  SUM(s2)  AS s2,
  SUM(s3)  AS s3,
  SUM(s4)  AS s4,
  SUM(s5)  AS s5,
  SUM(s6)  AS s6,
  SUM(s7)  AS s7,
  SUM(s8)  AS s8,
  SUM(s9)  AS s9,
  SUM(s10)  AS s10,
  SUM(s11)  AS s11,
  SUM(s12)  AS s12,
  SUM(s13)  AS s13,
  SUM(s14)  AS s14,
  SUM(s15)  AS s15,
  SUM(s16)  AS s16,
  SUM(s17)  AS s17,
  SUM(s18)  AS s18,
  SUM(s19)  AS s19,
  SUM(s20)  AS s20,
  SUM(s21)  AS s21,
  '${hiveconf:CurrentDate}' as `date`,  
  ${hiveconf:CurrentHour} as `hour`
 FROM ( 
   select * from pmsampleinputhour1 
   union all
   select * from pmsampleinputhour2 
   union all
   select * from pmsampleinputhour3) a  
GROUP BY concat('${hiveconf:CurrentDate}', ' ', lpad('${hiveconf:CurrentHour}', 2, '0') ,':00:00'), id, cycle;

