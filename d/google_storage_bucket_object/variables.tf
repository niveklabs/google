variable "bucket" {
  description = "(optional) - The name of the containing bucket."
  type        = string
  default     = null
}

variable "name" {
  description = "(optional) - The name of the object. If you're interpolating the name of this object, see output_name instead."
  type        = string
  default     = null
}

