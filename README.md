# 📊 AOBD Project — Price Paid Data Analysis

This project was developed for the course **Data Administration in Information Systems (ADSI)** at Instituto Superior Técnico.

It focuses on analyzing real-world property transaction data using **SQL Server 2022**, with an emphasis on performance optimization techniques such as indexing, partitioning, and query tuning.

---

## 📌 Table of Contents

- [📁 Project Overview](#-project-overview)
- [🗂️ Dataset](#️-dataset)
- [⚙️ Technologies Used](#️-technologies-used)
- [📂 Repository Structure](#-repository-structure)
- [🧱 Task 1 — Database Creation](#-task-1--database-creation)
- [📦 Task 2 — Partitioning](#-task-2--partitioning)
- [🚀 Task 3 — Indexing](#-task-3--indexing)
- [🔗 Task 4 — Join Analysis](#-task-4--join-analysis)
- [⚡ Task 5 — Query Tuning](#-task-5--query-tuning)
- [🔒 Task 6 — Transactions](#-task-6--transactions)
- [▶️ How to Run](#️-how-to-run)
- [👥 Authors](#-authors)

---

## 📁 Project Overview

The goal of this project is to analyze and optimize queries over large datasets containing property transaction records from England and Wales.

Key objectives include:
- Efficient data storage
- Query performance optimization
- Understanding SQL Server execution plans
- Exploring transaction isolation levels

---

## 🗂️ Dataset

The data used in this project comes from the **Price Paid Data** provided by Gov.UK.

It includes:
- Property prices
- Transaction dates
- Location data (postcode, district, county, etc.)

Two datasets were used:
- 2024 data
- 2025 data

---

## ⚙️ Technologies Used

- **SQL Server 2022**
- **T-SQL**
- **Git & GitHub**
- **LaTeX (for report)**

---

## 📂 Repository Structure

- [Task 1](./task1.sql)
- [Task 2](./task2.sql)
- [Task 3](./task3.sql)
- [Task 4](./task4.sql)
- [Task 5](./task5.sql)
- [Task 6](./task6.sql)
- [Report](./report)
- [README](./README.md)

Each folder contains the SQL scripts and relevant materials for the corresponding task.

---

## 🧱 Task 1 — Database Creation

- Creation of base tables  
- Import of CSV data  
- Creation of reduced ("Short") tables  

---

## 📦 Task 2 — Partitioning

- Implementation of partition function and scheme  
- Partitioning based on `County`  
- Analysis of data distribution  

---

## 🚀 Task 3 — Indexing

- Study of query performance without indexes  
- Creation of a covering index  
- Comparison of execution plans  

---

## 🔗 Task 4 — Join Analysis

- Evaluation of different join algorithms:  
  - Nested Loop  
  - Hash Join  
  - Merge Join  
- Analysis of group-by strategies  

---

## ⚡ Task 5 — Query Tuning

- Optimization of a complex query  
- Removal of unnecessary operations  
- Performance comparison before and after  

---

## 🔒 Task 6 — Transactions

- Demonstration of:  
  - Dirty reads  
  - Non-repeatable reads  
- Use of different isolation levels  

---

## ▶️ How to Run

1. Open SQL Server Management Studio  
2. Create a new database  
3. Run scripts in order:
   - Task 1 → Task 6  
4. Import CSV files when required  
5. Enable execution plans to analyze performance  

---

## 👥 Authors

- Afonso Gomes  
- Tiago Videira  

