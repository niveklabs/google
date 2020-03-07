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

variable "node_template" {
  description = "(required) - The URL of the node template to which this node group belongs."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "size" {
  description = "(required) - The total number of nodes in the node group."
  type        = number
}

variable "zone" {
  description = "(optional) - Zone where this node group is located"
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

