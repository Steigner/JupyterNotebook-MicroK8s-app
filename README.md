# JupyterNotebook-MicroK8s-app

How to set up?

1) https://microk8s.io/docs/ Install by specifed version: ```sudo snap install microk8s --classic --channel=1.32```
2) Use MicroK8s Registry running or Docker based Registry (Microk8s enable registry)
3) Enable propriet add-ons
4) GPU NVIDIA: there is starting pods some seconds so check it by ```microk8s kubectl get pods -A``` if is already started.
