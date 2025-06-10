# 🏎️ Formula 1 Data Management System with DB2 and Linux

Project to manage Formula 1 data, including drivers, teams, races, and results. It provides SQL scripts for database setup and Bash scripts for automation.

---

## 📁 Project Structure

```
formula1_db_project/
├── setup_db.sh          # Creates the F1DB database
├── create_tables.sql    # Creates database tables
├── insert_data.sql      # Inserts sample data
├── query_drivers.sh     # Queries and displays driver information
├── backup_db.sh         # Backs up the database
└── README.md            # Project documentation
```

---

## 🛠️ Prerequisites

- IBM DB2 installed and running
- Linux environment (Ubuntu, RHEL, etc.)
- Basic DB2 and shell scripting knowledge

---

## ▶️ Getting Started

1. **Make scripts executable:**
    ```bash
    chmod +x setup_db.sh query_drivers.sh backup_db.sh
    ```

2. **Create the database:**
    ```bash
    ./setup_db.sh
    ```

3. **Create tables:**
    ```bash
    db2 -tvf create_tables.sql
    ```

4. **Insert sample data:**
    ```bash
    db2 -tvf insert_data.sql
    ```

---

## 🔍 Querying Data

List all drivers and their teams:
```bash
./query_drivers.sh
```

---

## 💾 Backup Your Database

Back up the database:
```bash
./backup_db.sh
```
Backups are saved in `~/f1_backups`.

---

## 🧪 Sample Output

Example output from `./query_drivers.sh`:
```
name                     nationality           name                         
------------------------ --------------------- ------------------------
Lewis Hamilton           UK                    Mercedes                     
Max Verstappen           Netherlands           Red Bull Racing              
Charles Leclerc          Monaco                Ferrari                      
```

---

## 📚 Technologies Used

- **IBM DB2** – Relational database
- **Bash Shell** – Automation and DB2 interaction

---

## 🚀 Future Improvements

- Add a Python or Node.js API
- Build a web interface (Flask/Express)
- Schedule backups with `cron`

---

## 📝 License

MIT License – Free to use and modify.

---
