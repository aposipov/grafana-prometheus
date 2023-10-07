# grafana-prometheus
grafana+prometheus

## node-exporter
https://github.com/prometheus/node_exporter  
default port 9100:9100

```
docker run -d \
  --net="host" \
  --pid="host" \
  -v "/:/host:ro,rslave" \
  quay.io/prometheus/node-exporter:latest \
  --path.rootfs=/host
```

```
docker run -d \
  --net="host" \
  --pid="host" \
  -v "/:/host:ro,rslave" \
  --restart=unless-stopped \
  quay.io/prometheus/node-exporter:latest \
  --path.rootfs=/host
```

## links
https://www.youtube.com/watch?v=X_g-eJqiiLo  
https://git.digitalstudium.com/digitalstudium/grafana-docker-stack  
https://github.com/vegasbrianc/prometheus/tree/master