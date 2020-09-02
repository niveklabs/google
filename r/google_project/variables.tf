variable "auto_create_network" {
  description = "(optional) - Create the 'default' network automatically.  Default true. If set to false, the default network will be deleted.  Note that, for quota purposes, you will still need to have 1 network slot available to create the project successfully, even if you set auto_create_network to false, since the network will exist momentarily."
  type        = bool
  default     = null
}

variable "billing_account" {
  description = "(optional) - The alphanumeric ID of the billing account this project belongs to. The user or service account performing this operation with Terraform must have Billing Account Administrator privileges (roles/billing.admin) in the organization. See Google Cloud Billing API Access Control for more details."
  type        = string
  default     = null
}

variable "folder_id" {
  description = "(optional) - The numeric ID of the folder this project should be created under. Only one of org_id or folder_id may be specified. If the folder_id is specified, then the project is created under the specified folder. Changing this forces the project to be migrated to the newly specified folder."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - A set of key/value label pairs to assign to the project."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - The display name of the project."
  type        = string
}

variable "org_id" {
  description = "(optional) - The numeric ID of the organization this project belongs to. Changing this forces a new project to be created.  Only one of org_id or folder_id may be specified. If the org_id is specified then the project is created at the top level. Changing this forces the project to be migrated to the newly specified organization."
  type        = string
  default     = null
}

variable "project_id" {
  description = "(required) - The project ID. Changing this forces a new project to be created."
  type        = string
}

variable "skip_delete" {
  description = "(optional) - If true, the Terraform resource can be deleted without deleting the Project via the Google API."
  type        = bool
  default     = null
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      read   = string
      update = string
    }
  ))
  default = []
}

