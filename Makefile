
run: 
	kubectl apply -f app.yaml

delete:
	kubectl delete -f app.yaml

get:
	kubectl get pods --all-namespaces

logs:
	kubectl logs -f deployment.apps/app

pods:
	kubectl get pods  --namespace k8s-deploy

ip:
	minikube ip

labels:
	kubectl get pods --namespace k8s-deploy  --show-labels

.PHONY: run delete get logs pods ip labels