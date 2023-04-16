# CVO Azure NetApp
Terraform for creating NetApp CVO for Azure

Terraform template to deploy a single node or HA Cloud Volumes ONTAP (CVO) on Microsoft Azure from scratch.

Terraform Template for Cloud Volumes ONTAP (CVO) Single Node or HA
This is an archive of Terraform configuration files to deploy Cloud Volumes ONTAP (CVO) single node or HA using Terraform.

These templates use "netapp-cloudmanager" terraform provider.

## Folder Contents
This folder contains various deployment and configuration scenarios for Cloud Volumes ONTAP (CVO) single node deployment.

## Requirements
Terraform >= 0.13
Cloud Provider Account – Azure
Host machine (any OS supported by Terraform)
JQ (sudo apt-get install jq or equivalent)
Connector created on Cloud Manager through the script should have connectivity to the host from where this terraform script is running.
Provider documentation
The documentation is available at: https://registry.terraform.io/providers/NetApp/netapp-cloudmanager/latest/docs

### Controlling the provider version
Note that you can also control the provider version. This is controlled by a required_providers block in your Terraform configuration.

The syntax is as follows:
```
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
    netapp-cloudmanager = {
      source  = "NetApp/netapp-cloudmanager"
      version = "23.1.1"
    }
  }
}
```
Read more on provider version control.

## Procedure
In order to run the template:

1. Clone the repository.
```
git clone 
```
2. Navigate to the desired folder
```
cd 
```
3. Login to your Azure CLI (Azure CLI must be installed).
```
az login
```
4. Update the variables in terraform.tfvars.

5. Initialize the Terraform repository to install all the pre-requisites and prepare for deployment.
```
terraform init
```
Verify the terraform files using terraform validate command.
```
terraform validate
```
6. Make a dry run of the configuration to get a preview of all the changes expected by the deployment.
```
terraform plan
```
7. Run the deployment
```
terraform apply
```
8. To delete the deployment
```
terraform destroy
```
## Recipies:
Single Node Instance or HA
This template will deploy a single node or HA Cloud Volumes ONTAP (CVO) into the designated Azure subnet.

# Ansible
## Configure CVO with ansible using Config file and Variable file
### Task includs:
* Configure NTP
* Change Timezone
* Setup DNS Server
* Install SSL Certificate
* Create Cifs Server
* Create Domain Tunnel
* Add member to Cifs local group
* Modify Snapshot Policy with multiple schedule
* Enale autosupport
* Create NFS
* Create log forward configuration

## Requirements
* ansible version 2.9.10 or newer
* ansible galaxy collection - 22.5.0 (can obtain from https://galaxy.ansible.com/netapp/ontap)
* ansible python library -- netapp-lib (can obtain from https://pypi.org/project/netapp-lib/)
* Python 3.8 or newer

## How to run?
```
ansible-playbook ConfigCluster.yml -e=@../vars/vars.yml
```
