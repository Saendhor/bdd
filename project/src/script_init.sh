# This script is meant to initialize the project in sql.

# Create Database and Tables
mariadb -uuser -ppassword < init/tables_create.sql

# Populate the just created Tables
mariadb -uuser -ppassword < init/tables_populate.sql