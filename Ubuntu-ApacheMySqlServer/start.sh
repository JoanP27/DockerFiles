#!/bin/bash

# Inicia MySQL
service mysql start

# Ejecuta script SQL si no se ha ejecutado aún
if [ -f /docker-entrypoint-initdb.d/init.sql ]; then
    echo "Inicializando base de datos..."
    mysql < /docker-entrypoint-initdb.d/init.sql
    rm /docker-entrypoint-initdb.d/init.sql  # Evita que se ejecute en cada arranque
fi

# Inicia Apache
apache2ctl -D FOREGROUND
