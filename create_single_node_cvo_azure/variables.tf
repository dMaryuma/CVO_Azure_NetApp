
variable "refresh_token" {
    description = "The refresh token of NetApp cloud manager. This can be generated from netapp Cloud Central."
}

variable name {
    description = "The name of the Cloud Volumes ONTAP working environment."
}

variable location {
    description = "The location where the working environment will be created."
}
variable subscription_id {
    description = "The ID of the Azure subscription."
}
#variable resource_group {}
variable subnet_id {
    description = "The name of the subnet for the Cloud Volumes ONTAP system."
}

variable vnet_id {
    description = "The name of the virtual network."
}

variable vnet_resource_group {
    description = "The resource group in Azure associated to the virtual network."
}
variable cidr {}
variable azure_tag {
    type = map
}

variable storage_type {
    description = "The type of storage for the first data aggregate: ['Premium_LRS', 'Standard_LRS', 'StandardSSD_LRS']. The default is 'Premium_LRS'"
}

variable svm_name {
    description = "The name of the SVM."
}
variable svm_password {
    description = "The admin password for Cloud Volumes ONTAP."
}

variable client_id {
    description = "The client ID of the Cloud Manager Connector. You can find the ID from a previous create Connector action as shown in the example, or from the Connector tab on https://console.bluexp.netapp.com/."
}

variable workspace_id {
    description = "The ID of the Cloud Manager workspace where you want to deploy Cloud Volumes ONTAP. If not provided, Cloud Manager uses the first workspace. You can find the ID from the Workspace tab on https://cloudmanager.netapp.com."
}

variable capacity_package_name {
    description = "The capacity package name: ['Essential', 'Professional', 'Freemium', 'Edge', 'Optimized']. Default is 'Essential'. 'Edge' and 'Optimized' need ontap version 9.11.0 or above."
}
variable disk_size {
    description = "Azure volume size for the first data aggregate. For GB, the unit can be: [100 or 500]. For TB, the unit can be: [1,2,4,8,16]. The default is '1' ."
}
variable security_group_id {
    description = "The name of the security group (full identifier: /subscriptions/xxxxxx/resourceGroups/rg_westus/providers/Microsoft.Network/networkSecurityGroups/CVO-SG). If not provided, Cloud Manager creates the security group."
}
variable ontap_version {
    description = "The required ONTAP version. Ignored if 'use_latest_version' is set to true. The default is to use the latest version."
}
variable cloud_provider_account {
    description = "The cloud provider credentials id to use when deploying the Cloud Volumes ONTAP system. You can find the ID in Cloud Manager from the Settings > Credentials page. If not specified, Cloud Manager uses the managed service identity of the Connector virtual machine."
}

#variable disk_size_unit {
#    description = "['GB' or 'TB']. The default is 'TB'."
#}

#variable azure_tag {
#    description = "Tags for CVO"
#    type = map
#    default = {}
#}