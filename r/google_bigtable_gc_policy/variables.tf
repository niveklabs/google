variable "column_family" {
  description = "(required)"
  type        = string
}

variable "instance_name" {
  description = "(required)"
  type        = string
}

variable "mode" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "table" {
  description = "(required)"
  type        = string
}

variable "max_age" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      days = number
    }
  ))
  default = []
}

variable "max_version" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      number = number
    }
  ))
  default = []
}

