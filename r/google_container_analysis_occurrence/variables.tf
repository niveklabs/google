variable "note_name" {
  description = "(required) - The analysis note associated with this occurrence, in the form of\nprojects/[PROJECT]/notes/[NOTE_ID]. This field can be used as a\nfilter in list requests."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "remediation" {
  description = "(optional) - A description of actions that can be taken to remedy the note."
  type        = string
  default     = null
}

variable "resource_uri" {
  description = "(required) - Required. Immutable. A URI that represents the resource for which\nthe occurrence applies. For example,\nhttps://gcr.io/project/image@sha256:123abc for a Docker image."
  type        = string
}

variable "attestation" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      serialized_payload = string
      signatures = set(object(
        {
          public_key_id = string
          signature     = string
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

