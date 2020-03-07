variable "bucket" {
  description = "(required)"
  type        = string
}

variable "content_md5" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "content_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "credentials" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "duration" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "extension_headers" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "http_method" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "path" {
  description = "(required)"
  type        = string
}

