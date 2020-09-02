variable "key_ring_id" {
  description = "(required)"
  type        = string
}

variable "members" {
  description = "(required)"
  type        = set(string)
}

variable "role" {
  description = "(required)"
  type        = string
}

variable "condition" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      description = string
      expression  = string
      title       = string
    }
  ))
  default = []
}

