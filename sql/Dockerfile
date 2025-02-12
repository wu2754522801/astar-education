FROM mysql:8.0

MAINTAINER 2754522801@qq.com

ENV TZ=Asia/Shanghai

RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY ./astar_education.sql /docker-entrypoint-initdb.d
