variable "expiration_time_usec" {
  description = "(optional) - An expiration time in microseconds since epoch."
  type        = string
  default     = null
}

variable "key" {
  description = "(required) - Public key text in SSH format, defined by RFC4253 section 6.6."
  type        = string
}

variable "user" {
  description = "(required) - The user email."
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

