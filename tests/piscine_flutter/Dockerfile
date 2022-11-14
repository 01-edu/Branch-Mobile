FROM google/dart:2.12

ADD pubspec.* /app/

WORKDIR /app
RUN pub get
RUN mkdir /.pub-cache
ADD . /app
# RUN chown -R 1000:1000 /app
# RUN chown -R 1000:1000 /.pub-cache
# USER 1000:1000
COPY . .
# RUN dart pub get
ENTRYPOINT ["/app/entrypoint.sh"]
