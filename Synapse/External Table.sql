CREATE DATABASE SCOPED CREDENTIAL cred_981
WITH
(
    IDENTITY = 'Managed Identity'
);

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://awstoragedatalake981.dfs.core.windows.net/silver',
    CREDENTIAL = cred_981
);

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://awstoragedatalake981.dfs.core.windows.net/gold',
    CREDENTIAL = cred_981
);

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);

-- CREATE EXTERNAL TABLE EXTSALES
CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.sales;

-- CREATE EXTERNAL TABLE EXTCALENDAR
CREATE EXTERNAL TABLE gold.extcalendar
WITH
(
    LOCATION = 'extcalendar',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.calendar;

-- CREATE EXTERNAL TABLE EXTCUSTOMERS
CREATE EXTERNAL TABLE gold.extcustomers
WITH
(
    LOCATION = 'extcustomers',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.customers;

-- CREATE EXTERNAL TABLE EXTPRO_CATEGORY
CREATE EXTERNAL TABLE gold.extpro_category
WITH
(
    LOCATION = 'extpro_category',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.pro_category;

-- CREATE EXTERNAL TABLE EXTPRO_SUBCATEGORY
CREATE EXTERNAL TABLE gold.extpro_subcategory
WITH
(
    LOCATION = 'extpro_subcategory',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.pro_subcategory;

-- CREATE EXTERNAL TABLE EXTPRODUCTS
CREATE EXTERNAL TABLE gold.extproducts
WITH
(
    LOCATION = 'extproducts',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.products;

-- CREATE EXTERNAL TABLE EXTRETURNS
CREATE EXTERNAL TABLE gold.extreturns
WITH
(
    LOCATION = 'extreturns',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.returns;

-- CREATE EXTERNAL TABLE EXTTERRITORIES
CREATE EXTERNAL TABLE gold.extterritories
WITH
(
    LOCATION = 'extterritories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.territories;