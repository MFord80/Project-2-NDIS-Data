# Project-2-NDIS-Data

This repository contains files specific to the Data Analysis Bootcamp Project - ETL.

This project performs an ETL process on data available from two sections of the National Disability Insurance Scheme (NDIS) website.

Specifically this repository contains:
* ETL python notebook
* SQL database table
* an output folder and a resources folder
* an archive folder containing two csvs
* project proposal
* project report

To replicate the ETL process follow the following steps:

1. Clone this repository on your computer.

2. Download data (CSVs) from NDIS website.
- Go to https://data.ndis.gov.au/explore-data.
- In the 'Participants' section go to the States/Territories filter and select WA only.
- Select 'Download Data as CSV'.
- Repeat this process in the 'Utilisation of Plan Budgets' section.
- Go to https://data.ndis.gov.au/data-downloads.
- In the 'Participant numbers and average plan budgets' section download the available CSVs back to and including September 2020.
- In the 'Budget data downloads' section download the available CSVs back to and including September 2020.
- Move all downloaded CSVs into the 'resources' folder.

3. Run the ETL.ipynb notebook. Note the following:
- The CSVs downloaded from the 'Explore Data' page in step 2 are datestamped. The python script accounts for this. However, if you download the CSV on a different day to when you run the script you will need to manually enter the date.
- This notebook will remain current up until the end of December 2022. After this additional 'longitudinal' csvs will be added to the 'Data-downloads' page and the python script will need to be manually adjusted. The sections requiring adjustment are noted in the script.
- This notebook will generate two CSVs into the 'output' folder, which will be used in the next step. If there any issues in this process (including access to the NDIS website), examples of these CSVs have been added to the archive folder so that the remaining steps can be completed.

4. Create the ndis_db in PostgresSQL.
- In PostgresSQL create a database 'ndis_db'.
- In this database run the script included in ndis_db_tables.sql as a query.
- Use the import function in PostgresSQL to import participant_data.csv into the participants table and plan_utilisation_data.csv into the utilisation table.

5. Query the tables as required.
- Note that the two tables can be joined on their key column.






