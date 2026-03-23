CREATE DATABASE AOBD_project;

USE AOBD_project;


SELECT 
    TransactionUniqueIdentifier, Price, DateOfTransfer, Postcode, PropertyType, Old_New, PAON, Street, Locality, Town, District, County
INTO ShortPricePaidData2024
FROM PricePaidData2024;

SELECT 
    TransactionUniqueIdentifier, Price, DateOfTransfer, Postcode, PropertyType, Old_New, PAON, Street, Locality, Town, District, County
INTO ShortPricePaidData2025
FROM PricePaidData2025;


SELECT COUNT(*) FROM ShortPricePaidData2025;
SELECT COUNT(*) FROM ShortPricePaidData2024;