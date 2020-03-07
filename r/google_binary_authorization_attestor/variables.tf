variable "description" {
  description = "(optional) - A descriptive comment. This field may be updated. The field may be\ndisplayed in chooser dialogs."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - The resource name."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "attestation_authority_note" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      delegation_service_account_email = string
      note_reference                   = string
      public_keys = list(object(
        {
          ascii_armored_pgp_public_key = string
          comment                      = string
          id                           = string
          pkix_public_key = list(object(
            {
              public_key_pem      = string
              signature_algorithm = string
            }
          ))
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

