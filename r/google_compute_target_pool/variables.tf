variable "backup_pool" {
  description = "(optional) - URL to the backup target pool. Must also set failover_ratio."
  type        = string
  default     = null
}

variable "description" {
  description = "(optional) - Textual description field."
  type        = string
  default     = null
}

variable "failover_ratio" {
  description = "(optional) - Ratio (0 to 1) of failed nodes before using the backup pool (which must also be set)."
  type        = number
  default     = null
}

variable "health_checks" {
  description = "(optional) - List of zero or one health check name or self_link. Only legacy google_compute_http_health_check is supported."
  type        = list(string)
  default     = null
}

variable "instances" {
  description = "(optional) - List of instances in the pool. They can be given as URLs, or in the form of \"zone/name\". Note that the instances need not exist at the time of target pool creation, so there is no need to use the Terraform interpolators to create a dependency on the instances from the target pool."
  type        = set(string)
  default     = null
}

variable "name" {
  description = "(required) - A unique name for the resource, required by GCE. Changing this forces a new resource to be created."
  type        = string
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - Where the target pool resides. Defaults to project region."
  type        = string
  default     = null
}

variable "session_affinity" {
  description = "(optional) - How to distribute load. Options are \"NONE\" (no affinity). \"CLIENT_IP\" (hash of the source/dest addresses / ports), and \"CLIENT_IP_PROTO\" also includes the protocol (default \"NONE\")."
  type        = string
  default     = null
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      update = string
    }
  ))
  default = []
}

