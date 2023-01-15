# Define OS running app
FROM ubuntu
# Define config steps
RUN apt-get update \
 && apt-get install -y \
    apache2 \
 && rm -rf /var/lib/apt/lists/*

# Copy local file into direcetory specified
# COPY beryllium /var/www/html

# ADD VS Copy - Add will take any file on a url and add it into the path speecified
ADD startbootstrap-freelancer-master /var/www/html


# Launch Apache
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]