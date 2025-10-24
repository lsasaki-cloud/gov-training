CREATE TABLE `consent_master.consent_data_trans`(
  `country` string, 
  `countryfull` string, 
  `insuranceid` int, 
  `marketingconsent` string, 
  `marketingconsentstartdate` date, 
  `loyaltyconsent` string, 
  `loyaltyconsentstartdate` date, 
  `thirdpartyconsent` string, 
  `thirdpartyconsentstartdate` date)
CLUSTERED BY ( 
  country) 
INTO 3 BUCKETS
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'hdfs://localhost.localdomain:8020/warehouse/tablespace/managed/hive/consent_master.db/consent_data_trans'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transactional'='true', 
  'transactional_properties'='default', 
  'transient_lastDdlTime'='1598027899')
