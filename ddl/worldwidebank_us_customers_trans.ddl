CREATE TABLE `worldwidebank.us_customers_trans`(
  `number` string, 
  `gender` string, 
  `title` string, 
  `givenname` string, 
  `middleinitial` string, 
  `surname` string, 
  `streetaddress` string, 
  `city` string, 
  `state` string, 
  `statefull` string, 
  `zipcode` string, 
  `country` string, 
  `countryfull` string, 
  `emailaddress` string, 
  `username` string, 
  `password` string, 
  `telephonenumber` string, 
  `telephonecountrycode` string, 
  `mothersmaiden` string, 
  `birthday` string, 
  `age` int, 
  `tropicalzodiac` string, 
  `cctype` string, 
  `ccnumber` string, 
  `cvv2` string, 
  `ccexpires` string, 
  `nationalid` string, 
  `mrn` string, 
  `insuranceid` string, 
  `eyecolor` string, 
  `occupation` string, 
  `company` string, 
  `vehicle` string, 
  `domain` string, 
  `bloodtype` string, 
  `weight` double, 
  `height` int, 
  `latitude` double, 
  `longitude` double)
CLUSTERED BY ( 
  gender) 
INTO 2 BUCKETS
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'hdfs://localhost.localdomain:8020/warehouse/tablespace/managed/hive/worldwidebank.db/us_customers_trans'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transactional'='true', 
  'transactional_properties'='default', 
  'transient_lastDdlTime'='1598027908')
