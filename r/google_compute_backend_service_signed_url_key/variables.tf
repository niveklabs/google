variable "backend_service" {
  description = "(required) - The backend service this signed URL key belongs."
  type        = string
}

variable "key_value" {
  description = "(required) - 128-bit key value used for signing the URL. The key value must be a\nvalid RFC 4648 Section 5 base64url encoded string."
  type        = string
}

variable "name" {
  description = "(required) - Name of the signed URL key."
  type        = string
}

variable "project" {
  description = "(optional)"
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

