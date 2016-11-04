SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode = nonstrict;
set hive.cli.print.header=true;

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
STORED AS TEXTFILE LOCATION '${hiveconf:AGGREGATEDINPUT}';

MSCK REPAIR TABLE rawcycleinfo;

drop table if exists rawcycleinfoAgg ;
create table rawcycleinfoAgg 
(
  id INT, 
  cycle INT,
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
  s21 FLOAT);

insert OVERWRITE TABLE rawcycleinfoAgg
SELECT
  id, 
  cycle,
  (SUM(setting1) / SUM(Counter)) AS setting1,
  (SUM(setting2) / SUM(Counter)) AS setting2,
  (SUM(setting3) / SUM(counter)) AS setting3,
  (SUM(s1) / SUM(Counter)) AS s1,
  (SUM(s2) / SUM(counter)) AS s2,
  (SUM(s3) / SUM(counter)) AS s3,
  (SUM(s4) / SUM(counter)) AS s4,
  (SUM(s5) / SUM(counter)) AS s5,
  (SUM(s6) / SUM(counter)) AS s6,
  (SUM(s7) / SUM(counter)) AS s7,
  (SUM(s8) / SUM(counter)) AS s8,
  (SUM(s9) / SUM(counter)) AS s9,
  (SUM(s10) / SUM(counter)) AS s10,
  (SUM(s11) / SUM(counter)) AS s11,
  (SUM(s12) / SUM(counter)) AS s12,
  (SUM(s13) / SUM(counter)) AS s13,
  (SUM(s14) / SUM(counter)) AS s14,
  (SUM(s15) / SUM(counter)) AS s15,
  (SUM(s16) / SUM(counter)) AS s16,
  (SUM(s17) / SUM(counter)) AS s17,
  (SUM(s18) / SUM(counter)) AS s18,
  (SUM(s19) / SUM(counter)) AS s19,
  (SUM(s20) / SUM(counter)) AS s20,
  (SUM(s21) / SUM(Counter)) AS s21
 FROM rawcycleinfo a join 
 (
  select id, cycle from rawcycleinfo where `date` = '${hiveconf:CurrentDate}'  and `hour` = ${hiveconf:CurrentHour}
  and endofcycle = 1
 ) b
where a.id=b.id and a.cycle=b.cycle and 
  a.`date` >= DATE_ADD('${hiveconf:CurrentDate}', -7) and a.`date` <= '${hiveconf:CurrentDate}'
GROUP BY a.id, a.cycle;

-- create the anchor table
drop table if exists anchor;
CREATE TABLE anchor (
  id INT, 
  anchor_day INT,
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
  s21 FLOAT,
  Actualdate INT);
  
INSERT overwrite table anchor
SELECT
 id,
 cycle+4 AS anchor_day,
 s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,
 0 AS Actualdate
 FROM rawcycleinfoAgg
 UNION ALL
        SELECT
 id,
 cycle+3 AS anchor_day,
 s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,
 0 AS Actualdate
 FROM rawcycleinfoAgg
 UNION ALL
 
 SELECT
 id,
 cycle+2 AS anchor_day,
 s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,
 0 AS Actualdate
 FROM rawcycleinfoAgg
 UNION ALL
 SELECT 
 id,
 cycle+1 AS anchor_day,
 s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,
 0 AS Actualdate
 FROM rawcycleinfoAgg
 UNION ALL
 SELECT 
 id,
 cycle AS anchor_day,
 s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,
 1 AS Actualdate
 FROM rawcycleinfoAgg;

-- create the table that stores moving averages and moving stds
drop table if exists movingavestd;
CREATE TABLE movingavestd (
  id INT,
  cycle INT,
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
  s21 FLOAT,
  a1 FLOAT,
  a2 FLOAT,
  a3 FLOAT,
  a4 FLOAT,
  a5 FLOAT,
  a6 FLOAT,
  a7 FLOAT,
  a8 FLOAT,
  a9 FLOAT,
  a10 FLOAT,
  a11 FLOAT,
  a12 FLOAT,
  a13 FLOAT,
  a14 FLOAT,
  a15 FLOAT,
  a16 FLOAT,
  a17 FLOAT,
  a18 FLOAT,
  a19 FLOAT,
  a20 FLOAT,
  a21 FLOAT,
  sd1 FLOAT,
  sd2 FLOAT,
  sd3 FLOAT,
  sd4 FLOAT,
  sd5 FLOAT,
  sd6 FLOAT,
  sd7 FLOAT,
  sd8 FLOAT,
  sd9 FLOAT,
  sd10 FLOAT,
  sd11 FLOAT,
  sd12 FLOAT,
  sd13 FLOAT,
  sd14 FLOAT,
  sd15 FLOAT,
  sd16 FLOAT,
  sd17 FLOAT,
  sd18 FLOAT,
  sd19 FLOAT,
  sd20 FLOAT,
  sd21 FLOAT
  );

--insert value
INSERT overwrite table movingavestd
 SELECT
  id, 
  anchor_day AS cycle,
  (1 * 0) AS setting1,
  (1 * 0) AS setting2,
  (1 * 0) AS setting3,
  (1 * 0) AS s1, 
  (1 * 0) AS s2, 
  (1 * 0) AS s3, 
  (1 * 0) AS s4, 
  (1 * 0) AS s5, 
  (1 * 0) AS s6, 
  (1 * 0) AS s7, 
  (1 * 0) AS s8, 
  (1 * 0) AS s9, 
  (1 * 0) AS s10, 
  (1 * 0) AS s11, 
  (1 * 0) AS s12, 
  (1 * 0) AS s13, 
  (1 * 0) AS s14, 
  (1 * 0) AS s15, 
  (1 * 0) AS s16, 
  (1 * 0) AS s17, 
  (1 * 0) AS s18, 
  (1 * 0) AS s19, 
  (1 * 0) AS s20, 
  (1 * 0) AS s21,
  AVG(s1) AS a1,
  AVG(s2) AS a2,
  AVG(s3) AS a3,
  AVG(s4) AS a4,
  AVG(s5) AS a5,
  AVG(s6) AS a6,
  AVG(s7) AS a7,
  AVG(s8) AS a8,
  AVG(s9) AS a9,
  AVG(s10) AS a10,
  AVG(s11) AS a11,
  AVG(s12) AS a12,
  AVG(s13) AS a13,
  AVG(s14) AS a14,
  AVG(s15) AS a15,
  AVG(s16) AS a16,
  AVG(s17) AS a17,
  AVG(s18) AS a18,
  AVG(s19) AS a19,
  AVG(s20) AS a20,
  AVG(s21) AS a21,
  stddev_pop(s1) AS sd1,
  stddev_pop(s2) AS sd2,
  stddev_pop(s3) AS sd3,
  stddev_pop(s4) AS sd4,
  stddev_pop(s5) AS sd5,
  stddev_pop(s6) AS sd6,
  stddev_pop(s7) AS sd7,
  stddev_pop(s8) AS sd8,
  stddev_pop(s9) AS sd9,
  stddev_pop(s10) AS sd10,
  stddev_pop(s11) AS sd11,
  stddev_pop(s12) AS sd12,
  stddev_pop(s13) AS sd13,
  stddev_pop(s14) AS sd14,
  stddev_pop(s15) AS sd15,
  stddev_pop(s16) AS sd16,
  stddev_pop(s17) AS sd17,
  stddev_pop(s18) AS sd18,
  stddev_pop(s19) AS sd19,
  stddev_pop(s20) AS sd20,
  stddev_pop(s21) AS sd21
 FROM anchor
 GROUP BY id, anchor_day
 HAVING MAX(Actualdate) = 1
 ORDER BY id, cycle;

drop table if exists pmaircraftmlinput;
CREATE EXTERNAL TABLE pmaircraftmlinput (
  id INT,
  cycle INT,
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
  s21 FLOAT,
  a1 FLOAT,
  a2 FLOAT,
  a3 FLOAT,
  a4 FLOAT,
  a5 FLOAT,
  a6 FLOAT,
  a7 FLOAT,
  a8 FLOAT,
  a9 FLOAT,
  a10 FLOAT,
  a11 FLOAT,
  a12 FLOAT,
  a13 FLOAT,
  a14 FLOAT,
  a15 FLOAT,
  a16 FLOAT,
  a17 FLOAT,
  a18 FLOAT,
  a19 FLOAT,
  a20 FLOAT,
  a21 FLOAT,
  sd1 FLOAT,
  sd2 FLOAT,
  sd3 FLOAT,
  sd4 FLOAT,
  sd5 FLOAT,
  sd6 FLOAT,
  sd7 FLOAT,
  sd8 FLOAT,
  sd9 FLOAT,
  sd10 FLOAT,
  sd11 FLOAT,
  sd12 FLOAT,
  sd13 FLOAT,
  sd14 FLOAT,
  sd15 FLOAT,
  sd16 FLOAT,
  sd17 FLOAT,
  sd18 FLOAT,
  sd19 FLOAT,
  sd20 FLOAT,
  sd21 FLOAT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE LOCATION '${hiveconf:PREPOUTPUT}/date=${hiveconf:CurrentDate}/hour=${hiveconf:CurrentHour}';

--insert value
INSERT overwrite table pmaircraftmlinput
select id,cycle,sum(setting1), sum(setting2), sum(setting3),
  sum(s1),sum(s2),sum(s3),sum(s4),sum(s5),sum(s6),sum(s7),sum(s8),sum(s9),sum(s10),sum(s11),sum(s12),sum(s13),sum(s14),sum(s15),sum(s16),sum(s17),sum(s18),sum(s19),sum(s20),sum(s21),
  sum(a1),sum(a2),sum(a3),sum(a4),sum(a5),sum(a6),sum(a7),sum(a8),sum(a9),sum(a10),sum(a11),sum(a12),sum(a13),sum(a14),sum(a15),sum(a16),sum(a17),sum(a18),sum(a19),sum(a20),sum(a21),
  sum(sd1),sum(sd2),sum(sd3),sum(sd4),sum(sd5),sum(sd6),sum(sd7),sum(sd8),sum(sd9),sum(sd10),sum(sd11),sum(sd12),sum(sd13),sum(sd14),sum(sd15),sum(sd16),sum(sd17),sum(sd18),sum(sd19),sum(sd20),sum(sd21)
from (
  SELECT
   id,
   cycle,
   setting1,setting2,setting3,
   s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,
   0 as a1,0 as a2,0 as a3,0 as a4,0 as a5,0 as a6,0 as a7,0 as a8,0 as a9,0 as a10,0 as a11,0 as a12,
   0 as a13,0 as a14,0 as a15,0 as a16,0 as a17,0 as a18,0 as a19,0 as a20,0 as a21,
   0 as sd1,0 as sd2,0 as sd3,0 as sd4,0 as sd5,0 as sd6,0 as sd7,0 as sd8,0 as sd9,0 as sd10,
   0 as sd11,0 as sd12,0 as sd13,0 as sd14,0 as sd15,0 as sd16,0 as sd17,0 as sd18,0 as sd19,0 as sd20,0 as sd21
  FROM rawcycleinfoAgg
  UNION all
  SELECT 
   id,
   cycle,
   setting1,setting2,setting3,
   s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,
   a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,
   sd1,sd2,sd3,sd4,sd5,sd6,sd7,sd8,sd9,sd10,sd11,sd12,sd13,sd14,sd15,sd16,sd17,sd18,sd19,sd20,sd21
  FROM movingavestd
) a
group by id, cycle;

