#!/bin/bash

k3d cluster create locust -p "8089:80@loadbalancer" --agents 1
kubectl apply -f scripts-cm.yaml
kubectl apply -f locust.yaml
kubectl apply -f locust-worker.yaml
kubectl apply -f ingress.yaml
