CREATE EXTERNAL TABLE `hr.employees_masked`(
  `id` int, 
  `name` string, 
  `age` int, 
  `phone` string, 
  `email` string, 
  `dateofbirth` date, 
  `region` string, 
  `salary` int)
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
  'hdfs://localhost.localdomain:8020/hive_data/hr/employees'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'skip.header.line.count'='1', 
  'transient_lastDdlTime'='1598027878')
