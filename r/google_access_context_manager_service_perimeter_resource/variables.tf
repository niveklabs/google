variable "perimeter_name" {
  description = "(required) - The name of the Service Perimeter to add this resource to."
  type        = string
}

variable "resource" {
  description = "(required) - A GCP resource that is inside of the service perimeter.\nCurrently only projects are allowed.\nFormat: projects/{project_number}"
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

