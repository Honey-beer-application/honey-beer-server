FROM grafana/tempo:latest
COPY ./tempo.yaml /etc/tempo.yaml
EXPOSE 4317 4318 3200
CMD ["-config.file=/etc/tempo.yaml"]