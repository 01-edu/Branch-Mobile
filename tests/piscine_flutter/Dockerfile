FROM google/dart:2.12

RUN ["dart", "pub", "get"]
WORKDIR /app
COPY . .
RUN ["dart", "pub", "get"]
RUN ["chown", "-R", "1000:1000", "../root/"]

ENTRYPOINT ["/app/entrypoint.sh"]
