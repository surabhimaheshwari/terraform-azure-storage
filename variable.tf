variable "subscription_id" {
  description = "azure subscription id"
}
variable "resource_group_name1" {
  type        = string
  description = "Azure resource group name"
}
variable "storage_account_name" {
  type        = string
  description = "Azure storage account name"
}
variable "account_tier_type" {
  type        = string
  description = "Account tier type"
}
variable "account_replication_type_name" {
  type        = string
  description = "Account Replication type name"
}
variable "allow_nested_items_to_be_public" {
  type = bool
  description = "Allow or disallow nested items within this Account to opt into being public. Defaults to true"
}
variable "enable_https_traffic_only" {
  type = bool
  description = "Boolean flag which forces HTTPS if enabled, see here for more information. Defaults to true"
}
variable "accountkind" {
  type        = string
  description = "The type of storage account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2."
}
variable "min_tls_version" {
  type        = string
  description = "The minimum supported TLS version for the storage account"
}
variable "managed_identity_type" {
  type        = string
  description = "The type of Managed Identity which should be assigned to the Linux Virtual Machine. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`"
}
variable "managed_identity_ids" {
  type        = list(string)
  description = "A list of User Managed Identity ID's which should be assigned to the Linux Virtual Machine."
}
variable "blob_soft_delete_retention_days" {
  type        = number
  description = "Specifies the number of days that the blob should be retained, between `1` and `365` days. Defaults to `7`"
}
variable "container_soft_delete_retention_days" {
  type        = number
  description = "Specifies the number of days that the blob should be retained, between `1` and `365` days. Defaults to `7`"
}
variable "enable_versioning" {
  type        = bool
  description = "Is versioning enabled? Default to `false`"
}
variable "last_access_time_enabled" {
  type        = bool
  description = "Is the last access time based tracking enabled? Default to `false`"
}
variable "change_feed_enabled" {
  type        = bool
  description = "Is the blob service properties for change feed events enabled?"
}
variable "network_rules" {
  type        = object({ default_action = string,bypass = list(string), ip_rules = list(string), subnet_ids = list(string) })
  description = "Network rules restricing access to the storage account."
}
