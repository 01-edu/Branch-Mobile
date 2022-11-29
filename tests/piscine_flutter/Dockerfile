FROM google/dart:2.12

RUN ["ls"]
WORKDIR /app
COPY . .
RUN ["ls"]

#RUN ["dart", "pub", "get"]
RUN ["chown", "-R", "1000:1000", "../root/"]

ENTRYPOINT ["/app/entrypoint.sh"]
