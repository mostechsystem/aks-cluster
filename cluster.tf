# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "azurerm" {
  features {}
  subscription_id            = var.subscription_id
  tenant_id                  = var.tenant_id
  client_id                  = var.appId
  client_secret              = var.password
  skip_provider_registration = true
}

resource "azurerm_resource_group" "aks_cluster-rg" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    environment = "Demo"
  }
}

resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.aks_version

  default_node_pool {
    name            = "default"
    node_count      = 1
    vm_size         = "Standard_D2_v2"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = var.appId
    client_secret = var.password
  }

  role_based_access_control_enabled = true

  tags = {
    environment = "Demo"
  }
}
