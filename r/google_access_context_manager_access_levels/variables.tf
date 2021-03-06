variable "parent" {
  description = "(required) - The AccessPolicy this AccessLevel lives in.\nFormat: accessPolicies/{policy_id}"
  type        = string
}

variable "access_levels" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      basic = list(object(
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
      custom = list(object(
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
      description = string
      name        = string
      title       = string
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

