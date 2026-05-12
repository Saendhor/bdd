# This script is meant to initialize the project in sql.

# Create Database and Tables
mariadb -uuser -ppassword < init/create_tables.sql

# Populate the just created Tables
mariadb -uuser -ppassword < init/populate/populate_Assegnazioni_Laboratori.sql init/populate/populate_Exhibit.sql init/populate/populate_Operatori.sql init/populate/populate_Prenotazioni.sql init/populate/populate_Sale.sql init/populate/populate_Turni.sql
