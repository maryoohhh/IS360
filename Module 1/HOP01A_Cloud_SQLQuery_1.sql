exec msdb.dbo.rds_restore_database 
@restore_db_name='AdventureWorks-test', 
@s3_arn_to_restore_from='arn:aws:s3:::maryoh-sample-dbs/AdventureWorks2017.bak';
