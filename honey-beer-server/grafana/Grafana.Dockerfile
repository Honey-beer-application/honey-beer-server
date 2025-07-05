FROM grafana/grafana:latest
COPY ./grafana.ini /etc/grafana/grafana.ini
COPY ./dashboards /provisioning/dashboards
COPY ./provisioning /etc/grafana/provisioning
ENV OTEL_RESOURCE_ATTRIBUTES="service.name=grafana"
EXPOSE 3000
