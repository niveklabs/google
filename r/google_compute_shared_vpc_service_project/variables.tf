variable "host_project" {
  description = "(required) - The ID of a host project to associate."
  type        = string
}

variable "service_project" {
  description = "(required) - The ID of the project that will serve as a Shared VPC service project."
  type        = string
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

