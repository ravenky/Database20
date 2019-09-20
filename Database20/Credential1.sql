CREATE MASTER KEY ENCRYPTION BY PASSWORD = '23987hxJ#KL95234nl0zBe'; 
GO
CREATE DATABASE SCOPED CREDENTIAL adwCredential WITH IDENTITY = 'LoaderRC20', SECRET ='PaSSw0rd';
go
CREATE EXTERNAL DATA SOURCE [crmalesADWDS]
    WITH (
    TYPE = RDBMS,
    LOCATION = N'ebdev-sls-adwsvr-crm.database.windows.net',
    DATABASE_NAME = N'ebdev-sls-adw-crm',
    CREDENTIAL = [adwCredential]
    );
GO