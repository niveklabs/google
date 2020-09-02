variable "expiration_time" {
  description = "(optional) - Time of expiration for this note. Leave empty if note does not expire."
  type        = string
  default     = null
}

variable "long_description" {
  description = "(optional) - A detailed description of the note"
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - The name of the note."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "related_note_names" {
  description = "(optional) - Names of other notes related to this note."
  type        = set(string)
  default     = null
}

variable "short_description" {
  description = "(optional) - A one sentence description of the note."
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

variable "related_url" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      label = string
      url   = string
    }
  ))
  default = []
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

