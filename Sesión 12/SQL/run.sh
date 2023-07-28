# Limpia pantalla
clear

# Creacion de BD y tablas 
mysql -t -v -u admin -padmin < ddl-app-smartwatch.sql
# Inserción de datos
mysql -t -v -u admin -padmin < dml-app-smartwatch.sql
