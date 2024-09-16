COPY INTO staging_table
FROM 'https://<storage_account>.blob.core.windows.net/<container>/data.csv'
WITH (FILE_TYPE = 'CSV');

INSERT INTO target_table (column1, column2)
SELECT column1, UPPER(column2)
FROM staging_table;
