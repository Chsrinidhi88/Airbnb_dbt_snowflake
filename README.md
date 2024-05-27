## Project Overview

This project involves setting up a data pipeline using dbt (Data Build Tool) and Snowflake to analyze Airbnb data, with a specific focus on understanding how full moon dates affect Airbnb listings, reviews, and hosts. The project also integrates data quality checks and orchestration using Apache Airflow.

<img width="347" alt="image" src="https://github.com/Chsrinidhi88/Airbnb_dbt_snowflake/assets/34069596/29b8e7db-5c94-4e1e-a66a-9c75ba71d515">


<img width="905" alt="image" src="https://github.com/Chsrinidhi88/Airbnb_dbt_snowflake/assets/34069596/0849cedb-bd0b-41ed-9838-c2b40ca065ad">


<img width="313" alt="image" src="https://github.com/Chsrinidhi88/Airbnb_dbt_snowflake/assets/34069596/4fc3e431-5ca4-40a6-a53a-91dfd672e4d1">

<img width="312" alt="image" src="https://github.com/Chsrinidhi88/Airbnb_dbt_snowflake/assets/34069596/f04eebe7-9d6e-4ed7-bb3a-cd2644f748d1">

<img width="316" alt="image" src="https://github.com/Chsrinidhi88/Airbnb_dbt_snowflake/assets/34069596/265ba03e-3ce1-40b8-b387-2e0c599c65cd">








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
