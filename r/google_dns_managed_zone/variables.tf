variable "description" {
  description = "(optional) - A textual description field. Defaults to 'Managed by Terraform'."
  type        = string
  default     = null
}

variable "dns_name" {
  description = "(required) - The DNS name of this managed zone, for instance \"example.com.\"."
  type        = string
}

variable "labels" {
  description = "(optional) - A set of key/value label pairs to assign to this ManagedZone."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - User assigned name for this resource.\nMust be unique within the project."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "visibility" {
  description = "(optional) - The zone's visibility: public zones are exposed to the Internet,\nwhile private zones are visible only to Virtual Private Cloud resources. Default value: \"public\" Possible values: [\"private\", \"public\"]"
  type        = string
  default     = null
}

variable "dnssec_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      default_key_specs = list(object(
        {
          algorithm  = string
          key_length = number
          key_type   = string
          kind       = string
        }
      ))
      kind          = string
      non_existence = string
      state         = string
    }
  ))
  default = []
}

variable "forwarding_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      target_name_servers = set(object(
        {
          forwarding_path = string
          ipv4_address    = string
        }
      ))
    }
  ))
  default = []
}

variable "peering_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      target_network = list(object(
        {
          network_url = string
        }
      ))
    }
  ))
  default = []
}

variable "private_visibility_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      networks = set(object(
        {
          network_url = string
        }
      ))
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

