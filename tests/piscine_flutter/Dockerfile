FROM google/dart:2.12

RUN dart \
    pub \
    get

WORKDIR /app

RUN mkdir /.pub-cache
RUN chown -R 1000:1000 /app
RUN chown -R 1000:1000 /app/.pub-cache
USER 1000:1000
COPY . .

ENTRYPOINT ["/app/entrypoint.sh"]
