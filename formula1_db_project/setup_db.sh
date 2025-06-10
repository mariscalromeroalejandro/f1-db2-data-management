#!/bin/bash
# setup_db.sh - Creates the F1DB database in DB2

db2 "CREATE DATABASE F1DB"
echo "Database F1DB created successfully."