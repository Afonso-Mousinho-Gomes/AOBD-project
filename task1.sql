CREATE DATABASE AOBD_project;

USE AOBD_project;

CREATE TABLE PricePaidData2024 (
    TransactionUniqueIdentifier VARCHAR(50) NOT NULL,
    Price BIGINT NULL,
    DateOfTransfer SMALLDATETIME NULL,
    Postcode VARCHAR(8) NULL,
    PropertyType CHAR(1) NULL,
    Old_New CHAR(1) NULL,
    Duration CHAR(1) NULL,
    PAON VARCHAR(100) NULL,
    SAON VARCHAR(50) NULL,
    Street VARCHAR(50) NULL,
    Locality VARCHAR(50) NULL,
    Town VARCHAR(50) NULL,
    District VARCHAR(50) NULL,
    County VARCHAR(50) NULL,
    PPDCategoryType CHAR(1) NULL,
    RecordStatus VARCHAR(5) NULL,

	CONSTRAINT PK_PricePaidData2025 
    PRIMARY KEY (TransactionUniqueIdentifier)
);

CREATE TABLE PricePaidData2025 (
    TransactionUniqueIdentifier VARCHAR(50) NOT NULL,
    Price BIGINT NULL,
    DateOfTransfer SMALLDATETIME NULL,
    Postcode VARCHAR(8) NULL,
    PropertyType CHAR(1) NULL,
    Old_New CHAR(1) NULL,
    Duration CHAR(1) NULL,
    PAON VARCHAR(100) NULL,
    SAON VARCHAR(50) NULL,
    Street VARCHAR(50) NULL,
    Locality VARCHAR(50) NULL,
    Town VARCHAR(50) NULL,
    District VARCHAR(50) NULL,
    County VARCHAR(50) NULL,
    PPDCategoryType CHAR(1) NULL,
    RecordStatus VARCHAR(5) NULL,

	CONSTRAINT PK_PricePaidData2025v2
    PRIMARY KEY (TransactionUniqueIdentifier)
);

DROP TABLE IF EXISTS PricePaidData2025;
DROP TABLE IF EXISTS PricePaidData2024;


BULK INSERT PricePaidData2025
FROM 'C:\Users\Administrator\Downloads\pp-2025.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 1,
    FIELDQUOTE = '"',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001',
    TABLOCK
);

BULK INSERT PricePaidData2024
FROM 'C:\Users\Administrator\Downloads\pp-2024.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 1,
    FIELDQUOTE = '"',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001',
    TABLOCK
);

SELECT 
    TransactionUniqueIdentifier, Price, DateOfTransfer, Postcode, PropertyType, Old_New, PAON, Street, Locality, Town, District, County
INTO ShortPricePaidData2024
FROM PricePaidData2024;

SELECT 
    TransactionUniqueIdentifier, Price, DateOfTransfer, Postcode, PropertyType, Old_New, PAON, Street, Locality, Town, District, County
INTO ShortPricePaidData2025
FROM PricePaidData2025;

DROP TABLE IF EXISTS ShortPricePaidData2025;
DROP TABLE IF EXISTS ShortPricePaidData2024;


SELECT COUNT(*) FROM ShortPricePaidData2025;
SELECT COUNT(*) FROM ShortPricePaidData2024;