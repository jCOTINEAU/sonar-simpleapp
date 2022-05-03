IMAGE := simpleproject
TAG := latest

image-build:
	docker build --target=final -t ${IMAGE}:${TAG} .

image-push:
	docker push ${IMAGE}:${TAG}

deploy-dev:
	kubectl kustomize manifests/dev/ | kubectl apply -f -


