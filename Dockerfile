# Usa una imagen ligera de nginx basada en Alpine
FROM nginx:alpine

# Elimina la configuración por defecto de nginx
RUN rm /usr/share/nginx/html/*

# Copia los archivos estáticos al directorio de nginx
COPY configuracion.html documentos.html eliminar.html index.html main.html usuarios.html /usr/share/nginx/html/
COPY img/ /usr/share/nginx/html/img/

# Expone el puerto 80
EXPOSE 80

# El contenedor ejecuta nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]