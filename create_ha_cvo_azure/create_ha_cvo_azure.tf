terraform {
  required_providers {
    netapp-cloudmanager = {
      source = "NetApp/netapp-cloudmanager"
      version = "23.3.3"
    }
  }
}

provider "netapp-cloudmanager" {
  refresh_token = var.refresh_token
  #sa_secret_key         = var.cloudmanager_sa_secret_key
  #sa_client_id          = var.sa_client_id 
  #aws_profile           = var.cloudmanager_aws_profile
  #aws_profile_file_path = var.cloudmanager_aws_profile_file_path
  azure_auth_methods = ["env", "cli"]
}

resource "netapp-cloudmanager_cvo_azure" "cl-azure" {
  #depends_on = [azurerm_role_assignment.occm-role-assignment]
  provider            = netapp-cloudmanager
  name                = var.name
  location            = var.location
  subscription_id     = var.subscription_id
  #resource_group      = var.resource_group
  subnet_id           = var.subnet_id
  vnet_id             = var.vnet_id
  vnet_resource_group = var.vnet_resource_group
  cidr                = var.cidr
  azure_tag {
    tag_key   = "tag1"
    tag_value = "tag1_value"
  }
  azure_tag {
    tag_key   = "tag2"
    tag_value = "tag2_value"
  }
  svm_name                    = var.svm_name
  svm_password                = var.svm_password
  client_id                   = var.client_id
  workspace_id                = var.workspace_id
  is_ha                       = true
  allow_deploy_in_existing_rg = true
  capacity_package_name       = var.capacity_package_name
  disk_size                   = var.disk_size
  disk_size_unit              = var.disk_size_unit
  backup_volumes_to_cbs       = false
  security_group_id           = var.security_group_id
  ontap_version               = var.ontap_version
  cloud_provider_account      = var.cloud_provider_account 
}