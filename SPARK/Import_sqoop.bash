--TO IMPORT Department_Employees TABLES
sqoop import --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114232 --username anabig114232 --password UNKNOWN123 --compression-codec=snappy --as-avrodatafile --table dept_emp --warehouse-dir=/user/anabig114232/hive/warehouse/Data --m 1 --driver com.mysql.jdbc.Driver

--TO IMPORT Department_Managers TABLES
sqoop import --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114232 --username anabig114232 --password UNKNOWN123 --compression-codec=snappy --as-avrodatafile --table dept_mangr --warehouse-dir=/user/anabig114232/hive/warehouse/Data --m 1 --driver com.mysql.jdbc.Driver;

--TO IMPORT Departments TABLES
sqoop import --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114232 --username anabig114232 --password UNKNOWN123 --compression-codec=snappy --as-avrodatafile --table departments --warehouse-dir=/user/anabig114232/hive/warehouse/Data --m 1 --driver com.mysql.jdbc.Driver;

--TO IMPORT Salaries TABLES
sqoop import --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114232 --username anabig114232 --password UNKNOWn123 --compression-codec=snappy --as-avrodatafile --table salaries --warehouse-dir=/user/anabig114232/hive/warehouse/Data --m 1 --driver com.mysql.jdbc.Driver;

--TO IMPORT Titles TABLES
sqoop import --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114232 --username anabig114232 --password UNKNOWN123 --compression-codec=snappy --as-avrodatafile --table titles --warehouse-dir=/user/anabig114232/hive/warehouse/Data --m 1 --driver com.mysql.jdbc.Driver;

--TO IMPORT Employees_1 TABLES
sqoop import --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114232 --username anabig114232 --password UNKNOWN123 --compression-codec=snappy --as-avrodatafile --table employees --warehouse-dir=/user/anabig114232/hive/warehouse/Data --driver com.mysql.jdbc.Driver;

--NOW WE NEED TO CREATE A DIRECTORY FOR THE AVRO SCHEMA

hadoop fs -mkdir /user/anabig114232/project


[anabig114232@ip-10-1-1-204 ~]$ hdfs dfs -put /home/anabig114232/departments.avsc /user/anabig114232/project/departments.avsc                                           
[anabig114232@ip-10-1-1-204 ~]$ hdfs dfs -put /home/anabig114232/dept_mngr.avsc /user/anabig114232/project/dept_mng.avsc                                                
[anabig114232@ip-10-1-1-204 ~]$ hdfs dfs -put /home/anabig114232/dept_emp.avsc /user/anabig114232/project/dept_emp.avsc                                                 
[anabig114232@ip-10-1-1-204 ~]$ hdfs dfs -put /home/anabig114232/employeess.avsc /user/anabig114232/project/employeess.avsc                                             
[anabig114232@ip-10-1-1-204 ~]$ hdfs dfs -put /home/anabig114232/salaries.avsc /user/anabig114232/project/salaries.avsc                                                 
[anabig114232@ip-10-1-1-204 ~]$ hdfs dfs -put /home/anabig114232/titles.avsc /user/anabig114232/project/titles.avsc   