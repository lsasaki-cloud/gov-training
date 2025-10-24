CREATE EXTERNAL TABLE `claim.provider_summary`(
  `providerid` string, 
  `providername` string, 
  `providerstreetaddress` string, 
  `providercity` string, 
  `providerstate` string, 
  `providerzip` string, 
  `providerreferralregion` string, 
  `totaldischarges` int, 
  `averagecoveredcharges` decimal(10,2), 
  `averagetotalpayments` decimal(10,2), 
  `averagemedicarepayments` decimal(10,2))
COMMENT 'Provider Summary'
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
  'hdfs://localhost.localdomain:8020/hive_data/claim'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1598027871')
