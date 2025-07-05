FROM otel/opentelemetry-collector-contrib:latest
COPY ./otel-config.yaml /etc/otel-config/otel-config.yaml
EXPOSE 8888 8889 13133
CMD ["--config=/etc/otel-config/otel-config.yaml"]