## Basic Nomad Job + "Equivalent" Kubernetes Deployment

This directory contains a very basic Nomad Job spec and an "Equivalent" Kubernetes Deployment spec.
Their respective configs are for a containerized golang http echo server.

### Deploy Job to Nomad Locally
#### pre-requisites
* Docker (we are using the Docker task driver)
* Nomad agent binary

#### commands
* start nomad
  
  `nomad agent -dev`
  
* deploy job 
  
  `nomad run http-echo.nomad`

* discover port & view in browser at http://localhost:[port]

### Deploy Job to Kubernetes
#### pre-requisites
* Docker
* MiniKube

#### commands
* start minikube

  `minikube start`

* deploy deployment 

  `kubectl apply -f http-echo.yaml`

* make a tunnel & view in browser at http://localhost:8080

  `minikube service http-echo-service`