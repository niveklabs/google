variable "deletion_protection" {
  description = "(optional) - Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply that would delete the instance will fail."
  type        = bool
  default     = null
}

variable "display_name" {
  description = "(optional) - The human-readable display name of the Bigtable instance. Defaults to the instance name."
  type        = string
  default     = null
}

variable "instance_type" {
  description = "(optional) - The instance type to create. One of \"DEVELOPMENT\" or \"PRODUCTION\". Defaults to \"PRODUCTION\"."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - A mapping of labels to assign to the resource."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - The name (also called Instance Id in the Cloud Console) of the Cloud Bigtable instance."
  type        = string
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "cluster" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      cluster_id   = string
      num_nodes    = number
      storage_type = string
      zone         = string
    }
  ))
  default = []
}

