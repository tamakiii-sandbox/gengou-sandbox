# gengou-sandbox

~~~sh
make -C docker/ruby clean docker/mysql/initdb.d/02.sql
make -C docker reset && docker-compose up --build
~~~
