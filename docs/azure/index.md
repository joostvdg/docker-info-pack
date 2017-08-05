# Drove on Azure

## Requirements

* Resources Providers for Compute and Networking, [how to configure](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-manager-common-deployment-errors#noregisteredproviderfound)
* Azure Container Services
* Contributor Rights to a Resource Group

## Azure Resources & Concepts

[Introduction To Azure](https://docs.microsoft.com/en-us/azure/index)

* [LoadBalance](https://docs.microsoft.com/en-us/azure/load-balancer/)
* [Resource Group](https://www.petri.com/what-are-microsoft-azure-resource-groups)
* [Storage Account](https://docs.microsoft.com/en-us/azure/storage/storage-create-storage-account)
* [Public IP Address](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-ip-addresses-overview-arm)
* [Virtual Machine (VM)](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/)
* [VNET](https://docs.microsoft.com/en-us/azure/virtual-network/)
* [Availability Set]()
* [VM Scale Set](https://docs.microsoft.com/en-us/azure/virtual-machine-scale-sets/)
* [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/get-started-with-azure-cli) (see more below)
* [Azure Resource Manager (ARM)](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-overview) (see more below) 
* ARM Templates
* [Azure Container Services (ACS)](https://docs.microsoft.com/en-us/azure/container-service/)
* [ACS Engine](https://github.com/Azure/acs-engine) (more below)
## Azure CLI

* [Install Azure CLI](https://docs.microsoft.com/en-us/azure/xplat-cli-install)
* [Connect Azure Accout to CLI](https://docs.microsoft.com/en-us/azure/xplat-cli-connect)


### LoadBalancer config

In order to be able to access any docker service from the outside, you need to do the following:

* Add a HealthProbe for a port / protocol (i.e. tcp 80)
* Add a LoadBalancer Rule to the Agent Load LoadBalancer
    * The Rule will use the HealthProbe to determine wich nodes support the rule (port that is being load balanced)
    * The Rule will require a external and internal port (as any firewall rule)

We need to determine which ports should be accessible from the outside, and make sure they are in the ARM template.

## Azure File Docker Volume Driver

Some services require a file storage.
If thrown around in a cluster at random, this file storage has to be define elsewhere.
In Azure we can use the [Azure File Docker Volume Driver](https://github.com/Azure/azurefile-dockervolumedriver).

This will map to a [Storage Account](https://docs.microsoft.com/en-us/azure/storage/storage-create-storage-account)'s File Storage.
This is a SAMBA file storage with the same limitation (no symlinks).

For more information on how the underlying file storage can be used, read [here](https://github.com/Microsoft/azure-docs/blob/master/articles/storage/storage-how-to-use-files-linux.md).
