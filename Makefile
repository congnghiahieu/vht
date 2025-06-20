PLAYBOOK_OPENRESTY_BASE_IMAGE_VERSION=v1.0.3
PLAYBOOK_BACKEND_BASE_IMAGE_VERSION=v1.0.2

openresty:
	@docker build -t hieucien/openresty-playbook:$(PLAYBOOK_OPENRESTY_BASE_IMAGE_VERSION) -f Dockerfile.openresty .
	@docker push hieucien/openresty-playbook:$(PLAYBOOK_OPENRESTY_BASE_IMAGE_VERSION)

playbook-backend:
	@docker build -t hieucien/playbook-backend:$(PLAYBOOK_BACKEND_BASE_IMAGE_VERSION) -f Dockerfile.playbook-backend .
	@docker push hieucien/playbook-backend:$(PLAYBOOK_BACKEND_BASE_IMAGE_VERSION)
