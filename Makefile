.PHONY: hello

hello:
	@echo "Hello Gitpod"

PLAYBOOK_OPENRESTY_BASE_IMAGE_VERSION=v1.0.3
PLAYBOOK_BACKEND_BASE_IMAGE_VERSION=v1.0.5
PLAYBOOK_WEB_BASE_IMAGE_VERSION=v1.0.0

playbook-openresty:
	@docker build -t hieucien/playbook-openresty:$(PLAYBOOK_OPENRESTY_BASE_IMAGE_VERSION) -f playbook/openresty/Dockerfile playbook/openresty/
	@docker push hieucien/playbook-openresty:$(PLAYBOOK_OPENRESTY_BASE_IMAGE_VERSION)

playbook-backend:
	@docker build -t hieucien/playbook-backend:$(PLAYBOOK_BACKEND_BASE_IMAGE_VERSION) -f playbook/backend/Dockerfile playbook/backend/
	@docker push hieucien/playbook-backend:$(PLAYBOOK_BACKEND_BASE_IMAGE_VERSION)

playbook-web:
	@docker build -t hieucien/playbook-web:$(PLAYBOOK_WEB_BASE_IMAGE_VERSION) -f playbook/web/Dockerfile playbook/web/
	@docker push hieucien/playbook-web:$(PLAYBOOK_WEB_BASE_IMAGE_VERSION)

MDA_DA_GATEWAY_BASE_IMAGE_VERSION=v1.0.1
MDA_DA_SERVING_BASE_IMAGE_VERSION=v1.0.0

mda-da-gateway:
	@docker build -t hieucien/mda-da-gateway:$(MDA_DA_GATEWAY_BASE_IMAGE_VERSION) -f mda-da/gateway/Dockerfile mda-da/gateway/
	@docker push hieucien/mda-da-gateway:$(MDA_DA_GATEWAY_BASE_IMAGE_VERSION)

mda-da-serving:
	@docker build -t hieucien/mda-da-serving:$(MDA_DA_SERVING_BASE_IMAGE_VERSION) -f mda-da/serving/Dockerfile mda-da/serving/
	@docker push hieucien/mda-da-serving:$(MDA_DA_SERVING_BASE_IMAGE_VERSION)

