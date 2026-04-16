# Usamos una imagen ligera de Nginx
FROM nginx:alpine

# Copiamos el contenido de la carpeta actual al directorio por defecto de Nginx
COPY . /usr/share/nginx/html

# Exponemos el puerto 80 (el que usa Nginx internamente)
EXPOSE 80