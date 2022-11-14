FROM google/dart:2.12


ADD pubspec.* /app/
RUN pub get
ADD . /app
RUN pub get --offline
COPY . .
RUN dart pub get
ENTRYPOINT ["/app/entrypoint.sh"]
