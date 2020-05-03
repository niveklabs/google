variable "group" {
  description = "(required) - The name of the instance group."
  type        = string
}

variable "name" {
  description = "(required) - The name for this named port. The name must be 1-63 characters\nlong, and comply with RFC1035."
  type        = string
}

variable "port" {
  description = "(required) - The port number, which can be a value between 1 and 65535."
  type        = number
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "zone" {
  description = "(optional) - The zone of the instance group."
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

