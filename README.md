# MySQL Employee Database Management System

## 📌 Project Overview

This project focuses on designing and managing an Employee Database using **MySQL** and SQL Data Definition Language (DDL) commands.

The database is designed to store and manage employee information, department details, and organizational locations. The project demonstrates how to create database structures, modify tables, manage database objects, and implement constraints to maintain data integrity and consistency.

Through this project, I explored essential MySQL concepts, including CREATE, ALTER, RENAME, TRUNCATE, DROP, PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL, CHECK, and DEFAULT constraints.

This project is part of my practical learning journey as an **Aspiring Data Analyst**.

## 🎯 Project Objectives

- Create and manage an Employee Database using MySQL.
- Design tables with appropriate data types.
- Establish relationships between employees, departments, and locations.
- Perform table modifications using ALTER commands.
- Rename database tables and columns.
- Understand TRUNCATE and DROP operations.
- Implement constraints to maintain data integrity.
- Establish primary key and foreign key relationships.
- Prevent duplicate and invalid data entries.
- Understand database structure and relational database management.

## 🛠️ Tools and Technologies

| Tool / Technology | Purpose |
|---|---|
| MySQL | Database creation and management |
| MySQL Workbench | SQL query execution and database administration |
| SQL | Database definition and manipulation |
| DDL Commands | Creating and modifying database objects |
| Constraints | Maintaining data integrity |

## 🗄️ Database Structure

**Database Name:** `employee`

The project consists of three main tables.

### 1. Departments Table

Stores information about different departments within the organization.

| Column Name | Description | Constraint |
|---|---|---|
| department_id | Unique department identifier | PRIMARY KEY |
| department_name | Department name | NOT NULL, UNIQUE |

### 2. Locations Table

Stores organizational location information.

| Column Name | Description | Constraint |
|---|---|---|
| location_id | Unique location identifier | PRIMARY KEY, AUTO_INCREMENT |
| location_name | Location name | NOT NULL, UNIQUE |

### 3. Employees Table

Stores employee-related information and connects employees with their respective departments and locations.

| Column Name | Description | Constraint |
|---|---|---|
| employee_id | Unique employee identifier | PRIMARY KEY |
| employee_name | Employee full name | NOT NULL |
| gender | Employee gender | CHECK (M or F) |
| age | Employee age | CHECK (Age >= 18) |
| hire_date | Employee joining date | DEFAULT CURRENT_DATE |
| designation | Employee job designation | Appropriate VARCHAR data type |
| salary | Employee salary | DECIMAL |
| department_id | Department reference | FOREIGN KEY |
| location_id | Location reference | FOREIGN KEY |
| email | Employee email address | Additional column |

*Note: The age and hire_date columns are part of the initial DDL assignment. The final table structure may differ after applying the requested ALTER operations.*

## 🔧 SQL Concepts and Commands Implemented

### 1. Database and Table Creation (CREATE)

- Created a database named `employee`.
- Created Departments, Location, and Employees tables.
- Defined appropriate data types for each column.
- Established primary key and foreign key relationships.

### 2. Table Alteration (ALTER)

Performed table modifications using ALTER TABLE commands.

Operations included:

- Added a new `email` column to the Employees table.
- Modified the data type of the `designation` column.
- Dropped the `age` column.
- Renamed `hire_date` to `date_of_joining`.

### 3. Table Renaming (RENAME)

Renamed existing tables:

- `Departments` → `Departments_Info`
- `Location` → `Locations`

This demonstrates how database table names can be modified while maintaining the underlying data.

### 4. Table Truncation (TRUNCATE)

- Used TRUNCATE TABLE to remove all records from the Employees table.
- Retained the table structure for future data insertion.

### 5. Database and Table Dropping (DROP)

- Dropped the Employees table.
- Dropped the `employee` database.

These operations demonstrate database object deletion and management.

## 🔐 Database Constraints

Recreated the Employee Database with appropriate constraints to maintain data accuracy and consistency.

### Departments Table Constraints

- PRIMARY KEY: Ensures each department has a unique identifier.
- NOT NULL: Prevents department names from being empty.
- UNIQUE: Prevents duplicate department names.

### Locations Table Constraints

- PRIMARY KEY: Ensures each location has a unique identifier.
- AUTO_INCREMENT: Automatically generates sequential location IDs.
- NOT NULL: Ensures location names are provided.
- UNIQUE: Prevents duplicate location names.

### Employees Table Constraints

- PRIMARY KEY: Guarantees unique employee identifiers.
- NOT NULL: Ensures employee names are provided.
- CHECK: Restricts gender values to 'M' or 'F'.
- CHECK: Ensures employee age is 18 or above.
- DEFAULT: Automatically assigns the current date to hire_date when no date is provided.
- FOREIGN KEY: Connects employees with their respective departments and locations.

These constraints help prevent invalid entries and maintain referential integrity across the database.

## 🔗 Database Relationships

The database uses foreign key relationships to connect the three tables.

**Relationship 1: Departments and Employees**
- Primary Key: `Departments.department_id`
- Foreign Key: `Employees.department_id`

**Relationship 2: Locations and Employees**
- Primary Key: `Locations.location_id`
- Foreign Key: `Employees.location_id`

These relationships ensure that employees are associated with valid departments and locations.

## 📚 Key Learning Outcomes

Through this project, I gained practical experience in:

- Creating and managing relational databases.
- Writing SQL DDL statements.
- Creating tables with appropriate data types.
- Modifying table structures using ALTER.
- Renaming database objects.
- Understanding TRUNCATE and DROP operations.
- Implementing PRIMARY KEY and FOREIGN KEY constraints.
- Applying UNIQUE, NOT NULL, CHECK, and DEFAULT constraints.
- Understanding AUTO_INCREMENT functionality.
- Maintaining data integrity and referential integrity.
- Designing relational database structures using MySQL.

## 📁 Project Structure

The repository is organized as follows:

```text
MySQL-Employee-Database/
│
├── README.md
│
├── SQL/
│   ├── 01_Create_Database_and_Tables.sql
│   ├── 02_Alter_Table.sql
│   ├── 03_Rename_Tables.sql
│   ├── 04_Truncate_Table.sql
│   ├── 05_Drop_Database_and_Tables.sql
│   └── 06_Database_Constraints.sql
│
└── Screenshots/
    ├── Database_Creation.png
    ├── Table_Structure.png
    ├── Alter_Operations.png
    └── Constraints_Implementation.png
```

*Note: Organize your SQL scripts and screenshots according to the actual files uploaded to GitHub.*

## 🏁 Conclusion

This project provided hands-on experience in database creation, table management, and constraint implementation using MySQL.

By working with DDL commands and relational database constraints, I developed a better understanding of how structured databases are designed and maintained while ensuring data integrity and consistency.

This project strengthened my SQL fundamentals and provided a foundation for working with structured datasets as an **Aspiring Data Analyst**.

## 👨‍💻 About Me

**Jeeva S**

Aspiring Data Analyst

### Technical Skills

- SQL
- MySQL
- Microsoft Excel
- Power BI
- Python
- Data Cleaning
- Data Analysis
- Data Visualization

---

⭐ Thank you for visiting my GitHub repository!
