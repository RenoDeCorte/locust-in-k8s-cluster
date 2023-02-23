# Locust in a k8s cluster

<img src="https://user-images.githubusercontent.com/93259668/220996393-791ed6fe-58d2-48d6-b2f9-fbcc5ad0f71d.jpg" width="400">

## What is Locust? 
Locust is an open-source, distributed, and scalable load testing tool used for measuring the performance and scalability of web applications. It is typically used to simulate thousands or even millions of users, known as "virtual users," to generate a load on the application and observe its behavior under different conditions.

## Why deploy it in a kubernetes cluster?
When deployed on Kubernetes, Locust can be configured to run multiple worker nodes, allowing for even greater scalability and load generation. Kubernetes provides a highly available and scalable platform for running Locust, and makes it easy to spin up additional worker nodes as needed to handle large-scale load testing scenarios.

## What is this project?
This is a locust setup in a k8s cluster, with 1 master and 2 worker nodes. The number of worker nodes can be changed in `locust-worker.yaml`, `line 8` if desired. 

[DIAGRAM HERE]

## How do I set this up?!
The following demo is for setting up a cluster locally, using k3d. This could also be done using minikube or even in the cloud.  
**NOTE: when setting up this cluster in the cloud, you would need to create a yaml file for a load balancer listening on port 8089.  
Please refer to your cloud providers documentation.**


### Prerequisites
Have following installed on your computer

:heavy_check_mark: Docker  
:heavy_check_mark: Minikube / k3d / MicroK8s... (if deploying locally)  
:heavy_check_mark: A k8s cluster in AWS / google cloud / Azure...  (if deploying in the cloud)  
:heavy_check_mark: kubectl

### Let's do this!
```bash
git clone https://github.com/RenoDeCorte/locust-in-k8s-cluster.git
cd locust-in-k8s-cluster
./locust.sh
```

Wait for a few minutes and visit `localhost:8089`. You should see the locust interface with 2 workers:

![212499824-8ac238de-a881-4918-8664-f7ab60891d97](https://user-images.githubusercontent.com/93259668/221002120-68c8f409-bc6c-4641-95c3-3474ff1b85fb.png)

