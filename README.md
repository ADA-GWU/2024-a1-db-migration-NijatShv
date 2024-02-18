This document provides instructions for migrating and rolling back changes made to the database schema. It outlines the steps required to execute the migration script and how to revert those changes if necessary.

Migration Steps
Preparation:

Before proceeding with migration, ensure that you have appropriate permissions to alter database schema.
Back up your database to prevent data loss in case of unexpected issues during migration.
Execute Migration Script:

Run the provided SQL script named migration.sql.
This script includes commands for creating and populating tables, altering table structures, and renaming columns.
Execute each SQL command in the script sequentially in your preferred SQL database management tool.
Verify Changes:

After executing the migration script, verify that the database schema matches the expected structure.
Check the tables STUDENTS and INTERESTS to ensure that the columns and data are as expected.
Migration Completion:

Once the migration is successful and verified, the database schema is updated with the new structure.
Rolling Back Steps
Preparation:

Ensure that you have the necessary permissions to alter the database schema.
Back up your database to avoid any potential data loss during rollback.
Execute Rollback Script:

Run the provided SQL script named rollback.sql.
This script contains commands to revert the changes made during migration.
Execute each SQL command in the script sequentially in your SQL database management tool.
Verify Rollback:

After executing the rollback script, verify that the database schema has reverted to its previous state.
Check the tables STUDENTS and INTERESTS to ensure that the columns and data are reverted as expected.
Rollback Completion:

Once the rollback is successful and verified, the database schema is restored to its original structure.