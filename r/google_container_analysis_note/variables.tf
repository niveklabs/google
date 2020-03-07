variable "name" {
  description = "(required) - The name of the note."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "attestation_authority" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      hint = list(object(
        {
          human_readable_name = string
        }
      ))
    }
  ))
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

