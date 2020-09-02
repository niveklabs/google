variable "column_family" {
  description = "(required) - The name of the column family."
  type        = string
}

variable "instance_name" {
  description = "(required) - The name of the Bigtable instance."
  type        = string
}

variable "mode" {
  description = "(optional) - If multiple policies are set, you should choose between UNION OR INTERSECTION."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "table" {
  description = "(required) - The name of the table."
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

