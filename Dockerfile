FROM nginx:1.25.3

RUN apt-get update && apt-get install -y \
  apache2-utils \
  && rm -rf /var/lib/apt/lists/*

COPY conf/nginx.conf /etc/nginx/nginx.conf

COPY src/entrypoint.sh  /usr/local/entrypoint.sh
RUN chmod 755 /usr/local/entrypoint.sh

EXPOSE 80
ENTRYPOINT [ "/usr/local/entrypoint.sh" ]
CMD ["nginx"]