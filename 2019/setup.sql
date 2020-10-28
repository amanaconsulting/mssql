-- Datenbank anlegen mit Variablen aus ComposeFile
-- CREATE DATABASE $(MSSQL_DB);
-- GO
-- USE $(MSSQL_DB);
-- GO
-- CREATE LOGIN $(MSSQL_USER) WITH PASSWORD = '$(MSSQL_PASSWORD)';
-- GO
-- CREATE USER $(MSSQL_USER) FOR LOGIN $(MSSQL_USER);
-- GO
-- ALTER SERVER ROLE sysadmin ADD MEMBER [$(MSSQL_USER)];
-- GO

-- Datenbank für Migrations-Tests
CREATE DATABASE MIGTEST;
GO
USE MIGTEST;
GO
CREATE LOGIN migtest WITH PASSWORD = 'migtest', DEFAULT_DATABASE=MIGTEST, CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
GO
CREATE USER migtest FOR LOGIN migtest;
GO
EXEC MIGTEST..sp_addsrvrolemember @loginame = N'migtest', @rolename = N'dbcreator'
GO
EXEC MIGTEST..sp_addrolemember N'db_owner', N'migtest'
GO

-- Datenbank für VAT@GTC
CREATE DATABASE VAT;
GO
USE VAT;
GO
CREATE LOGIN vat WITH PASSWORD = 'vat', DEFAULT_DATABASE=VAT, CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
GO
CREATE USER vat FOR LOGIN vat;
GO
EXEC VAT..sp_addsrvrolemember @loginame = N'vat', @rolename = N'dbcreator'
GO
EXEC VAT..sp_addrolemember N'db_owner', N'vat'
GO

-- Datenbank für GTC
CREATE DATABASE GTC;
GO
USE GTC;
GO
CREATE LOGIN gtc WITH PASSWORD = 'gtc', DEFAULT_DATABASE=GTC, CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
GO
CREATE USER gtc FOR LOGIN gtc;
GO
EXEC GTC..sp_addsrvrolemember @loginame = N'gtc', @rolename = N'dbcreator'
GO
EXEC GTC..sp_addrolemember N'db_owner', N'gtc'
GO

-- Datenbank für das AMANA Portal
CREATE DATABASE PORTAL;
GO
USE PORTAL;
GO
CREATE LOGIN portal WITH PASSWORD = 'portal', DEFAULT_DATABASE=PORTAL, CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
GO
CREATE USER portal FOR LOGIN portal;
GO
EXEC PORTAL..sp_addsrvrolemember @loginame = N'portal', @rolename = N'dbcreator'
GO
EXEC PORTAL..sp_addrolemember N'db_owner', N'portal'
GO

-- Datenbank für DAC6
CREATE DATABASE DAC6;
GO
USE DAC6;
GO
CREATE LOGIN dac6 WITH PASSWORD = 'dac6', DEFAULT_DATABASE=DAC6, CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
GO
CREATE USER dac6 FOR LOGIN dac6;
GO
EXEC DAC6..sp_addsrvrolemember @loginame = N'dac6', @rolename = N'dbcreator'
GO
EXEC DAC6..sp_addrolemember N'db_owner', N'dac6'
GO

-- Datenbank für GLC
CREATE DATABASE GLC;
GO
USE GLC;
GO
CREATE LOGIN glc WITH PASSWORD = 'glc', DEFAULT_DATABASE=GLC, CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
GO
CREATE USER glc FOR LOGIN glc;
GO
EXEC GLC..sp_addsrvrolemember @loginame = N'glc', @rolename = N'dbcreator'
GO
EXEC GLC..sp_addrolemember N'db_owner', N'glc'
GO