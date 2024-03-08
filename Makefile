
run: 
	kubectl apply -f app.yaml

delete:
	kubectl delete -f app.yaml

get:
	kubectl get all

logs:
	kubectl logs -f deployment.apps/app

pods:
	kubectl get pods

ip:
	minikube ip

.PHONY: run delete get logs pods ip