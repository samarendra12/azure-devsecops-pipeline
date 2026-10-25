variable "azure_subscription_id" {
  type        = string
  description = "Target Azure Subscription GUID. Can also be supplied via ARM_SUBSCRIPTION_ID."
  default     = null
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Azure Resource Group."
  default     = "rg-axion-infrastructure-prod"
}

variable "azure_region" {
  type        = string
  description = "Azure region for resource placement."
  default     = "East US"
}

variable "environment" {
  type        = string
  description = "Deployment environment identifier (e.g. dev, staging, prod)."
  default     = "production"
}
