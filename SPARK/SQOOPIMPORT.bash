
sqoop import-all-tables  --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114232 --username anabig114232 --password UNKNOWN123 --compression-codec=snappy --as-avrodatafile --warehouse-dir=/user/anabig114232/hive/warehouse --driver com.mysql.jdbc.Driver 