FROM grafana/loki:latest
COPY ./loki.yaml /etc/loki/loki.yaml
EXPOSE 3100
CMD ["-config.file=/etc/loki/loki.yaml"]