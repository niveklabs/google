variable "bucket_name" {
  description = "(required) - The bucket to store reports in."
  type        = string
}

variable "prefix" {
  description = "(optional) - A prefix for the reports, for instance, the project name."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional) - The project to set the export bucket on. If it is not provided, the provider project is used."
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

