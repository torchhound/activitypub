FROM elixir:1.7
RUN apt-get update && apt-get install --yes build-essential inotify-tools postgresql-client
ADD . /app
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez
WORKDIR /app
EXPOSE 4000
CMD ["./run.sh"]