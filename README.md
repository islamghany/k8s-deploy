# K8s Deploy

This repository contains the code to deploy a simple web application in kubernetes.

### Pre-requisites

- Install [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- Install [minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)
- Install [docker](https://docs.docker.com/get-docker/)

### Steps to deploy

- Start minikube

```bash
minikube start
```

- Set the docker environment to minikube

```bash
eval $(minikube -p minikube docker-env)
```

**Note:** only in current terminal session the docker environment is set to minikube, if you open a new terminal session you need to run the above command again.

- Build the docker image in minikube

```bash
docker build -t k8s-deploy .
```

- Deploy the application

```bash
kubectl apply -f app.yaml
```

- Access the application

````bash
minikube service k8s-deploy
``

- Retrieve the IP of the minikube

```bash
minikube ip
````

- Access the application using the IP of the minikube

```bash
curl http://<minikube-ip>:<node-port>
```

- Clean up

```bash
kubectl delete -f app.yaml
```

- Stop minikube

```bash
minikube stop
```

- Delete minikube

```bash
minikube delete
```
