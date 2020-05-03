variable "database_version" {
  description = "(required) - The MySQL version running on your source database server: MYSQL_5_6 or MYSQL_5_7."
  type        = string
}

variable "host" {
  description = "(required) - The externally accessible IPv4 address for the source database server."
  type        = string
}

variable "name" {
  description = "(required) - The name of the source representation instance. Use any valid Cloud SQL instance name."
  type        = string
}

variable "port" {
  description = "(optional) - The externally accessible port for the source database server.\nDefaults to 3306."
  type        = number
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The Region in which the created instance should reside.\nIf it is not provided, the provider region is used."
  type        = string
  default     = null
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

