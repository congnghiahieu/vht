openresty:
	@docker build -t hieucien/openresty-playbook:v1.0.1 -f Dockerfile.openresty .
	@docker push hieucien/openresty-playbook:v1.0.1

playbook-backend:
	@docker build -t hieucien/playbook-backend-python-3.10.17-slim-bookworm:v1.0.2 -f Dockerfile.playbook-backend .
	@docker push hieucien/playbook-backend-python-3.10.17-slim-bookworm:v1.0.2
