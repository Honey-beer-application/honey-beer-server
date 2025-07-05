FROM prom/prometheus:latest
COPY ./kubernetes.prometheus.yml /etc/prometheus/kubernetes.prometheus.yml
EXPOSE 9090
CMD ["--web.enable-remote-write-receiver", "--config.file=/etc/prometheus/kubernetes.prometheus.yml", "--storage.tsdb.path=/prometheus", "--web.console.libraries=/usr/share/prometheus/console_libraries", "--web.console.templates=/usr/share/prometheus/consoles", "--enable-feature=native-histograms","--enable-feature=otlp-write-receiver"]