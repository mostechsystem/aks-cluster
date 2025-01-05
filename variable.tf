# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "appId" {
  description = "Azure Kubernetes Service Cluster service principal"
}

variable "password" {
  description = "Azure Kubernetes Service Cluster password"
}


variable "subscription_id" {
  description = "The Azure subscription ID"
  type        = string
}

variable "tenant_id" {
  description = "The Azure tenant ID"
  type        = string
}
