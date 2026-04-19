Student Management System — Database Project

A relational Student Management System built using Microsoft SQL Server, designed as a Database course project. The system implements a fully normalized schema (3NF), stored procedures, triggers, and a complete SQL script for setup and use.

---

Table of Contents

- [Overview](#overview)
- [Tech Stack](#tech-stack)
- [File Structure](#file-structure)
- [Database Schema](#database-schema)
- [Getting Started](#getting-started)
- [Features](#features)
- [Author](#author)

---

Overview

This project demonstrates core database design and implementation skills including:
- Schema design normalized to **Third Normal Form (3NF)**
- Stored Procedures for modular, reusable database logic
- Triggers for automatic enforcement of business rules
- A complete `.sql` script for easy deployment

---

Tech Stack
| Technology | Purpose |
|------------|---------|
| Microsoft SQL Server | Database engine |
| T-SQL | Query and procedure language |
| SQL Server Management Studio (SSMS) | Development environment |

---

File Structure

```
Database-Project/
├── script.sql                          # Full SQL setup script (tables, procedures, triggers)
├── Tables in 3NF.docx                  # Schema design in Third Normal Form
├── PROCEDURES.docx / PROCEDURES.pdf    # Stored procedures documentation
├── TRIGGERS.docx / TRIGGERS.pdf        # Triggers documentation
├── Database Project Report.docx        # Full project report
├── Student Management System.mdf       # SQL Server database file
├── Student Management System.bak       # Database backup file
└── Student Management System_log.ldf  # Database log file
```

---

Database Schema

The database is normalized to **3NF** and covers entities such as:
- Students
- Courses / Subjects
- Enrollment records
- Grades / Results
- Departments / Programs

Full schema details are documented in `Tables in 3NF.docx`.

---

Getting Started

### Prerequisites

- Microsoft SQL Server (2016 or later)
- SQL Server Management Studio (SSMS)

### Option 1: Restore from Backup

1. Open SSMS and connect to your SQL Server instance
2. Right-click **Databases** → **Restore Database**
3. Select `Student Management System.bak` as the source
4. Click **OK** to restore

### Option 2: Run the SQL Script

1. Open SSMS
2. Open `script.sql`
3. Execute the script to create all tables, procedures, and triggers from scratch

---

Features

- Full student record management (add, update, delete, query)
- Course enrollment and grade tracking
- Stored procedures for common operations (enrollment, grade entry, etc.)
- Triggers for enforcing data integrity rules automatically
- Schema normalized to 3NF to eliminate redundancy

---

Author

**Syed Faraz Ibne Saleem**
- GitHub: [@syedfaraz113](https://github.com/syedfaraz113)
