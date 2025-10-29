CREATE DATABASE IF NOT EXISTS accesorios_frices
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;


CREATE USER IF NOT EXISTS 'frices'@'localhost' IDENTIFIED BY 'frida';
GRANT ALL PRIVILEGES ON accesorios_frices .* TO 'frices'@'localhost';
FLUSH PRIVILEGES;


USE accesorios_frices;

CREATE TABLE IF NOT EXISTS categorias (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  descripcion TEXT,
  estado ENUM('activo','inactivo') DEFAULT 'activo',
  creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER USER 'frices'@'localhost' IDENTIFIED WITH mysql_native_password BY 'frida';
 FLUSH PRIVILEGES;
 
 SELECT user,host,plugin FROM mysql.user WHERE user='frices';
 
 SELECT * FROM categorias;