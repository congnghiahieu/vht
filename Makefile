openresty:
	@docker build -t hieucien/openresty-1.27.1.2-alpine-fat-amd64:v1.0.0 -f Dockerfile.openresty .
	@docker push hieucien/openresty-1.27.1.2-alpine-fat-amd64:v1.0.0

playbook-backend:
	@docker build -t hieucien/playbook-backend-python-3.10.17-slim-bookworm:v1.0.2 -f Dockerfile.playbook-backend .
	@docker push hieucien/playbook-backend-python-3.10.17-slim-bookworm:v1.0.2
