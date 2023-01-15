# Define OS running app
FROM ubuntu
# Define config steps
RUN apt-get update \
 && apt-get install -y \
    apache2 \
 && rm -rf /var/lib/apt/lists/*

#WORKDIR - Indicates a direcetory inside the image
WORKDIR /var/www/html

# Copy local file into direcetory specified
# COPY beryllium /var/www/html

# ADD VS Copy - Add will take any file on a url and add it into the path speecified
COPY startbootstrap-freelancer-master .

# ENV - Variables de entorno
ENV contenido prueba
RUN echo "$contenido" > /var/www/html/prueba.html

# Expose - Expone puertos 
EXPOSE 8080
# Launch Apache
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]