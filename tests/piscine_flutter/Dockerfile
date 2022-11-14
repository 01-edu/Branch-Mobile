FROM google/dart:2.12


ADD pubspec.* /app/
RUN pub get
ADD . /app
RUN mkdir /.pub-cache
RUN chown -r 1000:1000 $app
RUN chown -r 1000:1000 $.pub-cache
USER 1000:1000
RUN pub get --offline
COPY . .
RUN dart pub get
ENTRYPOINT ["/app/entrypoint.sh"]



