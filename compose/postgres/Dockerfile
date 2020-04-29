FROM postgres:11.3

# add create db script and make it executable
COPY ./compose/postgres/create_db_and_copy_settings.sh   /docker-entrypoint-initdb.d/10-create_db_and_copy_settings.sh
RUN chmod +x /docker-entrypoint-initdb.d/10-create_db_and_copy_settings.sh
#RUN /docker-entrypoint-initdb.d/10-create_db_and_copy_settings.sh

COPY ./compose/postgres/maintenance /usr/local/bin/maintenance
RUN chmod +x /usr/local/bin/maintenance/*
RUN mv /usr/local/bin/maintenance/* /usr/local/bin \
    && rmdir /usr/local/bin/maintenance
