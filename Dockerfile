FROM ubuntu
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y apache2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
ADD ../var/www/html /var/www/html
EXPOSE 80
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]

