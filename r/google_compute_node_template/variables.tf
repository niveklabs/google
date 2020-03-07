variable "description" {
  description = "(optional) - An optional textual description of the resource."
  type        = string
  default     = null
}

variable "name" {
  description = "(optional) - Name of the resource."
  type        = string
  default     = null
}

variable "node_affinity_labels" {
  description = "(optional) - Labels to use for node affinity, which will be used in\ninstance scheduling."
  type        = map(string)
  default     = null
}

variable "node_type" {
  description = "(optional) - Node type to use for nodes group that are created from this template.\nOnly one of nodeTypeFlexibility and nodeType can be specified."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - Region where nodes using the node template will be created.\nIf it is not provided, the provider region is used."
  type        = string
  default     = null
}

variable "node_type_flexibility" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      cpus      = string
      local_ssd = string
      memory    = string
    }
  ))
  default = []
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
    }
  ))
  default = []
}

