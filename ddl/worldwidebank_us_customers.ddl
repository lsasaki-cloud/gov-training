CREATE EXTERNAL TABLE `worldwidebank.us_customers`(
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
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
WITH SERDEPROPERTIES ( 
  'field.delim'=',', 
  'serialization.format'=',') 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://localhost.localdomain:8020/hive_data/worldwidebank/us_customers'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'skip.header.line.count'='1', 
  'transient_lastDdlTime'='1598027869')
