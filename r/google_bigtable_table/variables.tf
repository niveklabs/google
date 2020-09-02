variable "instance_name" {
  description = "(required) - The name of the Bigtable instance."
  type        = string
}

variable "name" {
  description = "(required) - The name of the table."
  type        = string
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "split_keys" {
  description = "(optional) - A list of predefined keys to split the table on. !> Warning: Modifying the split_keys of an existing table will cause Terraform to delete/recreate the entire google_bigtable_table resource."
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

