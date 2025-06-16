FROM mysql:latest

COPY queries.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_DATABASE=libreta
ENV MYSQL_USER=libretauser
ENV MYSQL_PASSWORD=libretasecret

# Autor: Lina Maria Montaño
# Fecha: 2025-06-15
# Descripción: Dockerfile para crear una imagen de MySQL con una base de datos inicial y un usuario predefinido.
# Este Dockerfile copia un archivo de consultas SQL al directorio de inicialización de MySQL,
# establece las variables de entorno necesarias para la configuración de la base de datos y expone el puerto 3306.
# Instrucciones:
# 0. Debes pararte de un directorio que contenga el archivo queries.sql.
# 1. Asegúrate de tener Docker instalado y en funcionamiento.
# 3. Asignar un nombre a la imagen: docker build -t libreta-db:v1 .
# 4. Verificar que la imagen se haya creado correctamente: docker images
# 5. Ejecutar el contenedor: docker run -d --name libreta-db -p 3306:3306 libreta-db:v1
# 6. Verificar que el contenedor se esté ejecutando: docker ps -a
