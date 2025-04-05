-- Establece la contraseña de root
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234';

-- Crea usuario phpmyadmin
CREATE USER 'phpmyadmin'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON *.* TO 'phpmyadmin'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;