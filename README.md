# grafana-prometheus
grafana+prometheus

## install
chmod -R 777 grafana/data/

## node-exporter
https://github.com/prometheus/node_exporter  
https://grafana.com/grafana/dashboards/1860-node-exporter-full/  
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

## cadvisor
https://github.com/google/cadvisor  
https://grafana.com/grafana/dashboards/14282-cadvisor-exporter/
```
sudo docker run \
  --volume=/:/rootfs:ro \
  --volume=/var/run:/var/run:ro \
  --volume=/sys:/sys:ro \
  --volume=/var/lib/docker/:/var/lib/docker:ro \
  --volume=/dev/disk/:/dev/disk:ro \
  --publish=8080:8080 \
  --detach=true \
  --name=cadvisor \
  --privileged \
  --device=/dev/kmsg \
  gcr.io/cadvisor/cadvisor
```

## links
https://www.youtube.com/watch?v=X_g-eJqiiLo  
https://git.digitalstudium.com/digitalstudium/grafana-docker-stack  
https://github.com/vegasbrianc/prometheus/tree/master