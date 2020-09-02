variable "description" {
  description = "(optional) - Description of the AccessLevel and its use. Does not affect behavior."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - Resource name for the Access Level. The short_name component must begin\nwith a letter and only include alphanumeric and '_'.\nFormat: accessPolicies/{policy_id}/accessLevels/{short_name}"
  type        = string
}

variable "parent" {
  description = "(required) - The AccessPolicy this AccessLevel lives in.\nFormat: accessPolicies/{policy_id}"
  type        = string
}

variable "title" {
  description = "(required) - Human readable title. Must be unique within the Policy."
  type        = string
}

variable "basic" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      combining_function = string
      conditions = list(object(
        {
          device_policy = list(object(
            {
              allowed_device_management_levels = list(string)
              allowed_encryption_statuses      = list(string)
              os_constraints = list(object(
                {
                  minimum_version = string
                  os_type         = string
                }
              ))
              require_admin_approval = bool
              require_corp_owned     = bool
              require_screen_lock    = bool
            }
          ))
          ip_subnetworks         = list(string)
          members                = list(string)
          negate                 = bool
          regions                = list(string)
          required_access_levels = list(string)
        }
      ))
    }
  ))
  default = []
}

variable "custom" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      expr = list(object(
        {
          description = string
          expression  = string
          location    = string
          title       = string
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

