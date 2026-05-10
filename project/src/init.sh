# This script is meant to initialize the project in sql.

# Create Database and Tables
mariadb -uuser -ppassword < create_tables.sql

# Populate the just created Tables
mariadb -uuser -ppassword < populate_tables.sql
