FROM dart:2.17.6 AS build

WORKDIR /server

COPY . .

RUN dart pub global activate dart_frog_cli

RUN dart pub get

CMD ["dart_frog", "dev"]