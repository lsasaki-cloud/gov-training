CREATE TABLE `erasure_master.data_erasure_trans`(
  `country` string, 
  `countryfull` string, 
  `insuranceid` int, 
  `rtbfrequested` string, 
  `requestdate` date, 
  `erasureoverride` string)
CLUSTERED BY ( 
  country) 
INTO 2 BUCKETS
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'hdfs://localhost.localdomain:8020/warehouse/tablespace/managed/hive/erasure_master.db/data_erasure_trans'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transactional'='true', 
  'transactional_properties'='default', 
  'transient_lastDdlTime'='1598027910')
