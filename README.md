# sqooping_sql_to_hdfs
Using Hadoop's Sqoop to import data from sql to HDFS and then using Hive to empty and remove directories for automatization

Data can loaded from relational databases to HDFS for ETL pipelines using Hadoop's Sqoop. respository simulates orders being 
made in a sql database and uses sqoop to load the data into HDFS. When the data is in HDFS it is no longer structured
as it was when in the database and can be referred to as a datalake.

To create the simulated orders make a sql database in Azure and use the sample AdventureWorkdsLT database. Then use the sql create
table script and then the insert script to fill in some orders for the newly made mock order table.
The sqoop command will create a job that can be executed and will import the data from sql to HDFS in a file called "new_sales".

If we were to automatize a workflow with Oozie we would want to move the data and get rid of the "new_sales" directory because
the sqoop command will create another "new_sales" directory with new data when run again. So, to avoid any type of directory 
already exists error, we will make a hive external table in a directory called "/sales" and use the LOAD DATA INPATH to 
flush and simultaneously remove in the "new_sales" directoy into the external table. This way the "new_sales" table no longer exists
and is HDFS is ready to recieve new orders.
