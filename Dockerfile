FROM prismagraphql/prisma:1.27
ARG PRISMA_CONFIG_PATH
ENV PRISMA_CONFIG_PATH prisma.yml
COPY config.yml config.yml
COPY sub.sh sub.sh
ENTRYPOINT sh sub.sh && sh -c /app/start.sh
EXPOSE 4466