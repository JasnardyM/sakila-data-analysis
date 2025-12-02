sakila-data-analysis

This project focuses on cleaning, exploring, and analyzing the Sakila MySQL database using MySQL Workbench.

It includes duplicate detection, null value inspection, data import, ERD generation, technical SQL scripting, and professional project organization following industry standards.

📁 Project Structure
sakila-data-analysis/
│
├── 01_scripts/
│   ├── sakila-schema.sql        # Full database structure
│   ├── sakila-data.sql          # Original dataset
│   ├── check_duplicates.sql     # Script to detect duplicate rows in all tables
│   ├── check_nulls.sql          # Script to detect null values per table
│
└── README.md                    # Project documentation

🗄️ Rebuilding the Database

The files:

sakila-schema.sql

sakila-data.sql

allow you to recreate the entire database from scratch.

To load them in MySQL Workbench:

SOURCE sakila-schema.sql;
SOURCE sakila-data.sql;

🔍 Duplicate Detection

A SQL script was created to scan key Sakila tables and identify duplicate records.

Example query:

SELECT 'actor' AS table_name, COUNT(*) AS duplicates
FROM actor
GROUP BY first_name, last_name
HAVING COUNT(*) > 1;


Full script located at:

📌 01_scripts/check_duplicates.sql

🚨 Null Value Detection

A script checks for null values across multiple tables.

Example:

SELECT 'actor' AS table_name, COUNT(*) AS nulls
FROM actor
WHERE first_name IS NULL OR last_name IS NULL;


Full script stored at:

📌 01_scripts/check_nulls.sql

🧩 ERD — Entity Relationship Diagram

Using MySQL Workbench Reverse Engineer, a complete ERD of the Sakila database was generated.
This helps visualize table relationships, primary keys, and foreign keys.

📝 Project Conclusions

Throughout this project, I accomplished the following:

✔️ Learned how to import and rebuild SQL databases from schema and data files.
✔️ Identified duplicates and null values across multiple tables at scale.
✔️ Created SQL scripts for automated data quality checks.
✔️ Organized a technical data project using GitHub following professional standards.
✔️ Built a foundation for real-world data cleaning and database analysis.

🎯 This repository demonstrates my skills in SQL, data quality analysis, and professional project organization.

If you want, I can also help you with:

✨ A professional GitHub banner
✨ A LinkedIn post announcing your project
✨ A portfolio description for your resume
✨ A ERD image to upload to the repo

Just tell me:
👉 “Make me a GitHub banner”
👉 “Write my LinkedIn post”
👉 “Add the ERD to the repo”

I'm ready when you are.S
