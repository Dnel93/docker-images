# Define OS running app
FROM ubuntu

#LABEL - Metadata to be used
LABEL version = "1.0"
LABEL description = "This is an apache image"
LABEL vendor = "nikedanz"
# Define config steps
RUN apt-get update \
 && apt-get install -y \
    apache2 \
 && rm -rf /var/lib/apt/lists/*

 WORKDIR /var/www/html

# ADD VS Copy - Add will take any file on a url and add it into the path speecified
COPY startbootstrap-freelancer-master .

RUN echo "$(whoami)" > user1.html
RUN useradd ricardo

# USER - Choose an user from system for a particular task
USER ricardo
RUN echo "$(whoami)" > /tmp/user2.html

# VOLUME - The data will not be deleted when the container dies
VOLUME /var/www/html

USER root
RUN cp /tmp/user2.html user2.html

COPY run.sh /run.sh
# Launch Apache
CMD sh /run.sh