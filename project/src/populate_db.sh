# Populate the just created Tables
mariadb -uuser -ppassword < init/populate/populate_Sale.sql
mariadb -uuser -ppassword < init/populate/populate_Exhibit.sql
mariadb -uuser -ppassword < init/populate/populate_Operatori.sql
mariadb -uuser -ppassword < init/populate/populate_Prenotazioni.sql
mariadb -uuser -ppassword < init/populate/populate_Turni.sql
mariadb -uuser -ppassword < init/populate/populate_Assegnazioni_Laboratori.sql