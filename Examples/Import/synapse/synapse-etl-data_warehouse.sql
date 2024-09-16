CREATE TABLE Sales
(
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    Amount DECIMAL(18,2)
);

COPY INTO Sales
FROM 'https://<storage_account>.blob.core.windows.net/<container>/sales_data.csv'
WITH
(
    FILE_TYPE = 'CSV',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);
