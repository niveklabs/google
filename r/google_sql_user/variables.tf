variable "host" {
  description = "(optional) - The host the user can connect from. This is only supported for MySQL instances. Don't set this field for PostgreSQL instances. Can be an IP address. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "instance" {
  description = "(required) - The name of the Cloud SQL instance. Changing this forces a new resource to be created."
  type        = string
}

variable "name" {
  description = "(required) - The name of the user. Changing this forces a new resource to be created."
  type        = string
}

variable "password" {
  description = "(optional) - The password for the user. Can be updated. For Postgres instances this is a Required field."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
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

