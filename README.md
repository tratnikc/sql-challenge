# sql-challenge
 
## EmployeesSQL

### included
1. [Data Model](https://github.com/tratnikc/sql-challenge/blob/main/EmployeeSQL/EmployeesERD.png) - used https://app.quickdatabasediagrams.com/#/  
2. [EmployeesERDgenerate.txt](https://github.com/tratnikc/sql-challenge/blob/main/EmployeeSQL/EmployeesERDgenerate.txt) - script used to generate the data model  
3. [sqlchallenge_db.sql](https://github.com/tratnikc/sql-challenge/blob/main/EmployeeSQL/sqlchallenge_db.sql) - script to create tables  
4. [insert_data.sql](https://github.com/tratnikc/sql-challenge/blob/main/EmployeeSQL/data/insert_data.sql) - in data folder; in case import utility does not work  
5. [data files in data folder](https://github.com/tratnikc/sql-challenge/tree/main/EmployeeSQL/data)  
6. [employeeSQL.sql](https://github.com/tratnikc/sql-challenge/blob/main/EmployeeSQL/employeeSQL.sql) - data analysis queries  
7. [data analysis output](https://github.com/tratnikc/sql-challenge/tree/main/EmployeeSQL/output) screenshots
8. [analysis.ipynb](https://github.com/tratnikc/sql-challenge/blob/main/EmployeeSQL/analysis.ipynb) - bonus analysis (use SQLAlchemy to connect to postgresql)
9. this README.md  
10. config.py in .gitignore contains connection string  


### Requirements
1. Create data model based on data files provided
2. Create database and tables
3. Import/insert data to respective tables
3. Perform data analysis
4. Visualize common salary ranges for employees using Pandas
5. Create a bar chart of average salary by title


### Steps
1. Create database "sql-challenge"
2. Create tables using [sqlchallenge_db.sql](https://github.com/tratnikc/sql-challenge/blob/main/EmployeeSQL/sqlchallenge_db.sql) - script to create tables  
3. Using Postgresql import utility, populate tables in the following order:
    * departments
    * titles
    * employees
    * dept_manager
    * dept_emp
    * salaries
4. If import failed, use [insert_data.sql](https://github.com/tratnikc/sql-challenge/blob/main/EmployeeSQL/data/insert_data.sql)  
5. Run queries using [employeeSQL.sql](https://github.com/tratnikc/sql-challenge/blob/main/EmployeeSQL/employeeSQL.sql) - data analysis queries  
6. Generate visualization using jupyter notebook [analysis.ipynb](https://github.com/tratnikc/sql-challenge/blob/main/EmployeeSQL/analysis.ipynb) 

### Analysis
[Data provided is fake.](https://github.com/tratnikc/sql-challenge/blob/main/EmployeeSQL/output/query8.png) All employees share the same set of last names except for employee 499942.
![employee 499942](https://github.com/tratnikc/sql-challenge/blob/main/EmployeeSQL/output/emp499942.png)
