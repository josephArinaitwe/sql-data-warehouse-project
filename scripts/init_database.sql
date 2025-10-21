/* 
==============================================================================
Create Database and Schemas
==============================================================================
Script Purpose:
				This script creates a new DB after checking if it exists.
				If the db exists, it is dropped and recreated. Additionally,
				the script sets up three schemas with in the database: 
				'bronze', 'silver', and 'gold'.

WARNING: 
		this drops the entire 'Datawarehouse' db if it exists. 
*/


USE master;

--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

--Create the DataWarehouse database

CREATE DATABASE DataWarehouse;

USE DataWarehouse;
GO

--Create the schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
