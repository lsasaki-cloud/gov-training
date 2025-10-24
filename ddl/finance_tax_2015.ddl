CREATE EXTERNAL TABLE `finance.tax_2015`(
  `ssn` string, 
  `fed_tax` int, 
  `state_tax` int, 
  `local_tax` int)
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
  'hdfs://localhost.localdomain:8020/hive_data/finance/tax_2015'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1598027871')
