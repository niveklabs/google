variable "instance_name" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "split_keys" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "column_family" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      family = string
    }
  ))
  default = []
}

