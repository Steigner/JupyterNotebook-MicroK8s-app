## I.
# Build docker image
docker build -t jupyter .
# tag image to Registry, there can be also used Docker based Registry
docker tag jupyter localhost:32000/jupyter:latest
# push image to Microk8s based registry
docker push localhost:32000/jupyter:latest

## II.
# Run Pod
microk8s kubectl apply -f jupyter_pod.yaml
