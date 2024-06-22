up:
	docker compose up -d

down:
	docker compose down

clean:
	docker system prune -af

restart-prom:
	docker kill -s SIGHUP grafana-prometheus-prometheus-1
