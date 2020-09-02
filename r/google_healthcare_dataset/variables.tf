variable "location" {
  description = "(required) - The location for the Dataset."
  type        = string
}

variable "name" {
  description = "(required) - The resource name for the Dataset."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "time_zone" {
  description = "(optional) - The default timezone used by this dataset. Must be a either a valid IANA time zone name such as\n\"America/New_York\" or empty, which defaults to UTC. This is used for parsing times in resources\n(e.g., HL7 messages) where no explicit timezone is specified."
  type        = string
  default     = null
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

