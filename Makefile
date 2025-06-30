PLAYBOOK_OPENRESTY_BASE_IMAGE_VERSION=v1.0.3
PLAYBOOK_BACKEND_BASE_IMAGE_VERSION=v1.0.5
MDA_DA_BASE_IMAGE_VERSION=v1.0.0

playbook-openresty:
	@docker build -t hieucien/playbook-openresty:$(PLAYBOOK_OPENRESTY_BASE_IMAGE_VERSION) -f playbook/openresty/Dockerfile playbook/openresty/
	@docker push hieucien/playbook-openresty:$(PLAYBOOK_OPENRESTY_BASE_IMAGE_VERSION)

playbook-backend:
	@docker build -t hieucien/playbook-backend:$(PLAYBOOK_BACKEND_BASE_IMAGE_VERSION) -f playbook/backend/Dockerfile playbook/backend/
	@docker push hieucien/playbook-backend:$(PLAYBOOK_BACKEND_BASE_IMAGE_VERSION)

mdada:
	@docker build -t hieucien/mda-da:$(MDA_DA_BASE_IMAGE_VERSION) -f mda-da/Dockerfile mda-da/
	@docker push hieucien/mda-da:$(MDA_DA_BASE_IMAGE_VERSION)
