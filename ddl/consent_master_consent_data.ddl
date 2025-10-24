CREATE EXTERNAL TABLE `consent_master.consent_data`(
  `country` string, 
  `countryfull` string, 
  `insuranceid` int, 
  `marketingconsent` string, 
  `marketingconsentstartdate` date, 
  `loyaltyconsent` string, 
  `loyaltyconsentstartdate` date, 
  `thirdpartyconsent` string, 
  `thirdpartyconsentstartdate` date)
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
  'hdfs://localhost.localdomain:8020/hive_data/consent'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'skip.header.line.count'='1', 
  'transient_lastDdlTime'='1598027877')
