CREATE TABLE `hr.employees_encrypted`(
  `id` int, 
  `name` string, 
  `age` int, 
  `phone` string, 
  `email` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'hdfs://localhost.localdomain:8020/warehouse/tablespace/managed/hive/hr.db/employees_encrypted'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transactional'='true', 
  'transactional_properties'='default', 
  'transient_lastDdlTime'='1598027890')
