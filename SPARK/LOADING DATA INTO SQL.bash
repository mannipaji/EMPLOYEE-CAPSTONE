#loading the file from the  hdfs and the importing to SQL tables using Apache sqoop

--for departments table:-

sqoop export --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114232 --username anabig114232 --password UNKNOWN123 --table departments --export-dir /user/anabig114232/departments1.csv

--for dept_emp table:-

sqoop export --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114232 --username anabig114232 --password UNKNOWN123 --table dept_emp --export-dir /user/anabig114232/dept_emp1.csv

--for dept_mngr table:-

sqoop export --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114232 --username anabig114232 --password UNKNOWN123 --table dept_mngr --export-dir /user/anabig114232/dept_mngr1.csv 

--for employees table:-

sqoop export --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114232 --username anabig114232 --password UNKNOWN123 --table employees --export-dir /user/anabig114232/employee1.csv 

--for salaries table:-

sqoop export --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114232 --username anabig114232 --password UNKNOWN123 --table salaries --export-dir /user/anabig114232/salaries1.csv 

--for titles table:-

sqoop export --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114232 --username anabig114232 --password UNKNOWN123 --table titles --export-dir /user/anabig114232/titles1.csv 

