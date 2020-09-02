variable "parent" {
  description = "(required) - The AccessPolicy this ServicePerimeter lives in.\nFormat: accessPolicies/{policy_id}"
  type        = string
}

variable "service_perimeters" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      create_time    = string
      description    = string
      name           = string
      perimeter_type = string
      spec = list(object(
        {
          access_levels       = list(string)
          resources           = list(string)
          restricted_services = list(string)
          vpc_accessible_services = list(object(
            {
              allowed_services   = list(string)
              enable_restriction = bool
            }
          ))
        }
      ))
      status = list(object(
        {
          access_levels       = list(string)
          resources           = list(string)
          restricted_services = set(string)
          vpc_accessible_services = list(object(
            {
              allowed_services   = set(string)
              enable_restriction = bool
            }
          ))
        }
      ))
      title                     = string
      update_time               = string
      use_explicit_dry_run_spec = bool
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

