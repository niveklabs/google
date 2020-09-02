variable "grpc_config" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "openapi_config" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "protoc_output_base64" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "service_name" {
  description = "(required)"
  type        = string
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

