FROM centos:7

RUN \
yum -y install \
httpd \
php \
php-cli

RUN echo "<?php phpinfo(); ?>" > /var/www/html/index.php

CMD apachectl -DFOREGROUND