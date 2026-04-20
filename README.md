# 🚀 Azure Data Lakehouse Pipeline (ADF | ADLS Gen2 | Databricks | Synapse)

## 📌 Overview

This project demonstrates an end-to-end data engineering pipeline built on Microsoft Azure using a lakehouse architecture.  

The pipeline ingests raw data, processes and transforms it using scalable services, and delivers analytics-ready datasets for reporting.

---

## 🏗 Architecture

Data Source → Azure Data Factory → ADLS Gen2 (Bronze) → Databricks (PySpark) → ADLS Gen2 (Silver) → Azure Synapse (Gold)
<img width="1004" height="529" alt="image" src="https://github.com/user-attachments/assets/6247d0b8-8029-4feb-86e2-a3500e06f323" />

---

## 🔄 Data Pipeline Flow

### 🔹 Data Ingestion (Bronze Layer)
- Ingested raw data from external source using Azure Data Factory  
- Stored raw, unprocessed data in Azure Data Lake Storage Gen2  

### 🔹 Data Processing (Silver Layer)
- Used Azure Data Factory pipelines for data movement and orchestration  
- Performed data cleaning, validation, and transformation using PySpark in Databricks  
- Stored processed data in Parquet format for optimized performance  

### 🔹 Data Serving (Gold Layer)
- Queried transformed data using Azure Synapse Serverless SQL  
- Created external tables and views for analytical use cases  
- Prepared datasets for reporting and business insights  

---

## 🛠 Tech Stack

- Azure Data Factory  
- Azure Data Lake Storage Gen2  
- Azure Databricks (PySpark)  
- Azure Synapse Analytics (Serverless SQL)  
- SQL  
- Parquet  

---

## ⚙ Key Features

- Designed ETL pipelines using Azure Data Factory  
- Implemented Medallion Architecture (Bronze, Silver, Gold layers)  
- Applied data validation and transformation logic using PySpark  
- Used Parquet format for efficient storage and querying  
- Built scalable and modular data pipeline architecture  

---

## 📊 Key Concepts

- Data Ingestion & Transformation  
- ETL Pipeline Design  
- Data Lakehouse Architecture  
- Serverless Data Processing  
- Data Modeling (Fact & Dimension)  

---

## 🚀 Outcome

- Built a scalable and efficient data pipeline  
- Enabled analytics-ready datasets for reporting  
- Simulated real-world cloud data engineering workflow  

---

## 👨‍💻 Author

Akash PV
