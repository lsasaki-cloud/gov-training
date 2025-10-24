CREATE EXTERNAL TABLE `consent_master.eu_countries`(
  `countrycode` string, 
  `countryfull` string)
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
  'hdfs://localhost.localdomain:8020/hive_data/eu_countries'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1598027877')
