-----------------------------------
--- Create view Calendar
-----------------------------------
CREATE VIEW gold.calendar AS
SELECT *
FROM OPENROWSET
(
    BULK 'https://awstoragedatalake981.dfs.core.windows.net/silver/calendar/',
    FORMAT = 'PARQUET'
) AS query1;

-----------------------------------
--- Create view Customers
-----------------------------------
CREATE VIEW gold.customers AS
SELECT *
FROM OPENROWSET
(
    BULK 'https://awstoragedatalake981.dfs.core.windows.net/silver/customers/',
    FORMAT = 'PARQUET'
) AS query2;

-----------------------------------
--- Create view Product Categories
-----------------------------------
CREATE VIEW gold.prod_categories AS
SELECT *
FROM OPENROWSET
(
    BULK 'https://awstoragedatalake981.dfs.core.windows.net/silver/product_categories/',
    FORMAT = 'PARQUET'
) AS query3;

-----------------------------------
--- Create view Product Subcategories
-----------------------------------
CREATE VIEW gold.prod_subcategories AS
SELECT *
FROM OPENROWSET
(
    BULK 'https://awstoragedatalake981.dfs.core.windows.net/silver/product_subcategories/',
    FORMAT = 'PARQUET'
) AS query4;

-----------------------------------
--- Create view Products
-----------------------------------
CREATE VIEW gold.products AS
SELECT *
FROM OPENROWSET
(
    BULK 'https://awstoragedatalake981.dfs.core.windows.net/silver/products/',
    FORMAT = 'PARQUET'
) AS query5;

-----------------------------------
--- Create view Returns
-----------------------------------
CREATE VIEW gold.returns AS
SELECT *
FROM OPENROWSET
(
    BULK 'https://awstoragedatalake981.dfs.core.windows.net/silver/returns/',
    FORMAT = 'PARQUET'
) AS query6;

-----------------------------------
--- Create view Sales
-----------------------------------
CREATE VIEW gold.sales AS
SELECT *
FROM OPENROWSET
(
    BULK 'https://awstoragedatalake981.dfs.core.windows.net/silver/sales_2017/',
    FORMAT = 'PARQUET'
) AS query7;

-----------------------------------
--- Create view Territories
-----------------------------------
CREATE VIEW gold.territories AS
SELECT *
FROM OPENROWSET
(
    BULK 'https://awstoragedatalake981.dfs.core.windows.net/silver/territories/',
    FORMAT = 'PARQUET'
) AS query8;