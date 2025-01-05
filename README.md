# JupyterNotebook MicroK8s App
Example of how to simply run Jupyter Notebook with the Pytorch library preinstalled in MicroK8s. This is a simple setup with no persistent volumes on server side disc. 

## :grey_question: How to set up

:red_circle: I will started with linux based server https://ubuntu.com/

:large_blue_circle: Ensure that you have installed https://www.docker.com/

Note: For Nvdia GPUs

:white_circle: Ensure that you have installed nvidia drivers

:white_circle: Ensure that you have installed https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html

1) Install specifed version: ```sudo snap install microk8s --classic --channel=1.32```
2) ```
   sudo usermod -a -G microk8s $USER
   mkdir -p ~/.kube
   chmod 0700 ~/.kube
   su - $USER
   ```
3) Enable propriet add-ons and wait until all system pods are **RUNNING** ```watch microk8s kubectl get nodes -A```

    a) In our case we use MicroK8s Registry ```microk8s enable registry``` but also is ok use Docker based Registry there is different port

    b) In our case we use MicroK8s Nvidia ```microk8s enable nvidia``` but pytorch can run also in cpu mode, tensorflow mode, etc ... - there is needed change in docker base image [Dockerfile](Dockerfile)

4) ```
   Start Pod
   user@user:~/JupyterNotebook-MicroK8s-app$ ./start_pod.sh
   ```
   ```
   Stop Pod
   user@user:~/JupyterNotebook-MicroK8s-app$ ./start_pod.sh
   ```
   
## :orange_book: Docs

https://microk8s.io/docs/ 

## :information_source: Contacts

:mailbox: Martin.Juricek1@vutbr.cz
