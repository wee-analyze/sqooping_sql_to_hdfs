--if sqoop jobs are automitized then we need to get rid of the directory 
--and move the data that was imported from sql. 
--Use Hive LOAD DATA from one which will move the data and make the old directory 
--disappear so when the job flow is run again it will not run into an error that the 
--old directory already exists. 


--create external table which also create a new directory
CREATE EXTERNAL TABLE RawSales (
  order_id bigint,
  rev_id int,
  order_date CHAR(10),
  due_date CHAR(10),
  ship_date CHAR(10),
  status int
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' 
LOCATION "/sales"  --this makes a new directory called "sales"
;

LOAD DATA INPATH "/new_sales" INTO TABLE RawSales;
--/new_sales dir is now gone and data is in the "/sales" directory filling the 
--RawSales table.
;