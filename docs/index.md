## 1. Requirements

* Docker v1.12+
* Docker Machine v0.10+
* Docker Compose v1.10+

## 2. Bits and pieces

| Service                           | Tool                                                                              |
|-----------------------------------|-----------------------------------------------------------------------------------|
| Virtual Machine                   | [Azure Ubuntu Server]()                                                           |
| Orchestration                     | [Azure Container Services](https://docs.microsoft.com/en-us/azure/container-service/) |
| Docker Orchestration              | [Docker Swarm Mode]((https://docs.docker.com/engine/swarm/swarm-tutorial/))    	|
| Build server Task Manager         | [Jenkins 2 Master](https://jenkins.io/2.0/)                                   	|
| Build server Task Executor        | [Jenkins Slave](https://wiki.jenkins-ci.org/display/JENKINS/Swarm+Plugin)      	|
| Docker Registry                   | [Azure Docker Registry](https://docs.microsoft.com/en-us/azure/container-registry/)|

## 3. Azure

First phase to get Drove up and running in Microsoft Azure. A developer needs to have 
[Azure CLI](https://docs.microsoft.com/en-us/azure/xplat-cli-install) installed on his PC. This is needed
to provision VMs from within the command-line and to automate this process.
