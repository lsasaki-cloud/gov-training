CREATE EXTERNAL TABLE `cost_savings.claim_savings`(
  `reportdate` date, 
  `name` string, 
  `sequenceid` int, 
  `claimid` int, 
  `costsavings` int, 
  `eligibilitycode` int, 
  `latitude` decimal(10,0), 
  `longitude` decimal(10,0))
COMMENT 'Claims Savings'
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
  'hdfs://localhost.localdomain:8020/hive_data/cost_savings'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1598027871')
