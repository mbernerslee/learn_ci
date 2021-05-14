FROM hexpm/elixir:1.11.2-erlang-23.1.1-debian-buster-20200607

RUN apt-get update
RUN apt-get install gnupg wget bc python -y

RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN echo "deb http://apt.postgresql.org/pub/repos/apt buster-pgdg main" > /etc/apt/sources.list.d/pgdg.list

RUN apt-get update

RUN apt-get install postgresql-11 postgresql-client-11 -y

USER postgres
RUN /etc/init.d/postgresql start &&\
    psql --command "ALTER USER postgres WITH SUPERUSER PASSWORD 'postgres';"

USER root
RUN mix local.hex --force
RUN mix local.rebar --force
