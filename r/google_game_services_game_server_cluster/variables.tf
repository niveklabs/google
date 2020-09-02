variable "cluster_id" {
  description = "(required) - Required. The resource name of the game server cluster"
  type        = string
}

variable "description" {
  description = "(optional) - Human readable description of the cluster."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - The labels associated with this game server cluster. Each label is a\nkey-value pair."
  type        = map(string)
  default     = null
}

variable "location" {
  description = "(optional) - Location of the Cluster."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "realm_id" {
  description = "(required) - The realm id of the game server realm."
  type        = string
}

variable "connection_info" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      gke_cluster_reference = list(object(
        {
          cluster = string
        }
      ))
      namespace = string
    }
  ))
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

