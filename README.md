PHP container with some additional extensions
=============================================

Most php projects need more than bare PHP-FPM
and installing `libpng12-dev` evey time is not the best solution.
 
Extensions
----------

* mbstring
* pdo_mysql
* gd (freetype, png, jpeg, gif)

Usage
-----

In `docker-compose.yml`:

```
  your_container:
    image: aurelijusb/php:7.0.7-fpm
    volumes:
        - ./some/as/in/nginix:/some/as/in/nginix
```

Building
--------

```
docker build .
```

References
----------

 * https://hub.docker.com/_/php/
 * https://github.com/docker-library/php