This dbt project shows the different materializations after a data load in combination with persistent and transient staging tables.

Folder 00staging contains the SQL scripts to create the staging tables and load data (full and delta load).
Folder models and staging contain the materializations for persistent (prs) and transient (trs) staging tables:
- view
- table
- incremental
- snapshot (slowly changing dimension 2)

Steps to run the dbt project with the different materialization scenarios:
1.) Execute in the database: 00staging/01_create_staging.sql
2.) Execute in the database: 00staging/02_initial_load.sql

3a.) dbt run 
3b.) dbt snapshot
Now check data in the target tables after the full load.

4.) Execute in the database: 00staging/03_delta_load.sql

5a.) dbt run 
5b.) dbt snapshot
Now check data in the target tables after delta load with persistent and transient staging tables.

For an entire blog post with explanations, see: 