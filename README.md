## Project Overview

This project involves setting up a data pipeline using dbt (Data Build Tool) and Snowflake to analyze Airbnb data, with a specific focus on understanding how full moon dates affect Airbnb listings, reviews, and hosts. The project also integrates data quality checks and orchestration using Apache Airflow.

### Environment Setup

1. **Install Python 3.10**
2. **Set Up Virtual Environment**
    - Create a directory for the project.
    - Install `virtualenv`.
    - Create and activate a virtual environment.

3. **Install dbt-Snowflake Connector**
    - This will also install dbt-core, which allows connection to various data sources.

### Snowflake Connection

- **Username**: 
- **Password**: 

### dbt Project Setup

1. **Initialize dbt Project**
    - Set up a new dbt project named `dbtlearn`.

2. **Debug dbt Connection**
    - Run `dbt debug` to ensure the connection to Snowflake is successful.

3. **Open Project in VSCode**
    - Open the project folder in VSCode for development.

### Data Model

The project involves four primary tables:
- Listings
- Reviews
- Hosts
- Full Moon Dates

These tables will be used to analyze the impact of full moon dates on Airbnb activities.

### Data Flow Overview

1. **Import Data into Snowflake**
    - Load the datasets into Snowflake.

2. **Create Staging Layer**
    - Adjust column names in the three main tables using Common Table Expressions (CTEs).
    - Save the SQL code in Snowflake and replicate it in dbt by creating a file in `dbtlearn/models/src_listings.sql`.

3. **Run dbt Models**
    - dbt will automatically detect changes in the models and execute them.

### Creating Cleansed Layer

- **Dimensional Listings Table**: Set minimum nights to 1 if it’s 0 and remove the dollar sign from prices.

### Core Layer

- **Fact Table**: Implement as an incremental table.
- **Dimensional Tables**: Implement as views.

### Mart Layer

- Create tables that are accessible for BI tools to analyze the impact of the full moon on Airbnb activities.

### Slowly Changing Dimension (SCD) Implementation

- Create snapshots of tables to automatically implement changes.

### Data Quality Checks in dbt

- Ensure data quality by implementing checks within dbt.

### Data Lineage in dbt

- Track the data lineage using dbt's UI.

### Orchestrating dbt with Airflow

- Use Apache Airflow's Bash operator to orchestrate dbt transformations.
