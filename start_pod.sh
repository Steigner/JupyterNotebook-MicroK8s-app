## I.
# Build docker image
docker build -t jupyter .
docker tag jupyter localhost:32000/jupyter:latest
docker push localhost:32000/jupyter:latest

## II.
# Run Pod
microk8s kubectl apply -f jupyter_pod.yaml