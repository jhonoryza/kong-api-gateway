# vim:set ft=dockerfile:
FROM postgres:9.6

COPY init.sql /docker-entrypoint-initdb.d/
COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["postgres"]
