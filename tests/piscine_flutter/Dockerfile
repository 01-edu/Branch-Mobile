FROM google/dart:2.12

WORKDIR /app
COPY ../pubspec.* .
RUN ["dart", "pub", "get"]
COPY . .
#RUN ["dart", "pub", "get"]
RUN ["chown", "-R", "1000:1000", "../root/"]

ENTRYPOINT ["/app/entrypoint.sh"]
