# SQL-Challenge
![Sql_data_base_with_logo](https://github.com/DigitalJake/SQL-Challenge/assets/120591725/33aa4248-0709-4eb5-88e1-1934f2c7ead0)

## Employee Database
 
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

This Challenge is divided into three parts: data modeling, data engineering, and data analysis.


### Data Modeling

Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. 

![Screenshot (455)](https://github.com/DigitalJake/SQL-Challenge/assets/120591725/16232df6-3e92-4cc7-8559-554e28ec4f5f)


### Data Engineering

Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

• Remember to specify the data types, primary keys, foreign keys, and other constraints.

• For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.

• Be sure to create the tables in the correct order to handle the foreign keys.


Import each CSV file into its corresponding SQL table.

### Data Analysis

List the employee number, last name, first name, sex, and salary of each employee.

List the first name, last name, and hire date for the employees who were hired in 1986.

List the manager of each department along with their department number, department name, employee number, last name, and first name.

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

List each employee in the Sales department, including their employee number, last name, and first name.

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


