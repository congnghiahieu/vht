openresty:
	@docker build -t hieucien/openresty-1.27.1.2-alpine-fat-amd64:v1.0.0 -f Dockerfile.openresty .
	@docker push hieucien/openresty-1.27.1.2-alpine-fat-amd64:v1.0.0
