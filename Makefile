.SILENT:

build_expressjs_app:
	docker build expressjs_app -f expressjs_app/Dockerfile -t struckchure/expressjs_app
	docker push struckchure/expressjs_app

build_fastapi_app:
	docker build fastapi_app -f fastapi_app/Dockerfile -t struckchure/fastapi_app
	docker push struckchure/fastapi_app

build_gofiber_app:
	docker build gofiber_app -f gofiber_app/Dockerfile -t struckchure/gofiber_app
	docker push struckchure/gofiber_app

build:
	build_expressjs_app build_fastapi_app build_gofiber_app

k8s_apply_all:
	kubectl apply -f k8s/expressjs
	kubectl apply -f k8s/fastapi
	kubectl apply -f k8s/gofiber

	kubectl apply -f k8s/ingress.yaml

k8s_rollout_deployment:
	kubectl rollout restart \
		deployment/expressjs-app-deployment \
		deployment/fastapi-app-deployment \
		deployment/gofiber-app-deployment
