#!/bin/bash

echo "Starting EKS Deployment"

echo "Updating kubeconfig for EKS cluster"
aws eks update-kubeconfig --region ap-south-1 --name mini-2-cluster

echo "Applying Kubernetes deployment and service"
kubectl apply -f /home/ubuntu/kubernetes/deployment.yaml
kubectl apply -f /home/ubuntu/kubernetes/service.yaml