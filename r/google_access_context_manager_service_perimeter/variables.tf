variable "description" {
  description = "(optional) - Description of the ServicePerimeter and its use. Does not affect\nbehavior."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - Resource name for the ServicePerimeter. The short_name component must\nbegin with a letter and only include alphanumeric and '_'.\nFormat: accessPolicies/{policy_id}/servicePerimeters/{short_name}"
  type        = string
}

variable "parent" {
  description = "(required) - The AccessPolicy this ServicePerimeter lives in.\nFormat: accessPolicies/{policy_id}"
  type        = string
}

variable "perimeter_type" {
  description = "(optional) - Specifies the type of the Perimeter. There are two types: regular and\nbridge. Regular Service Perimeter contains resources, access levels,\nand restricted services. Every resource can be in at most\nONE regular Service Perimeter.\n\nIn addition to being in a regular service perimeter, a resource can also\nbe in zero or more perimeter bridges. A perimeter bridge only contains\nresources. Cross project operations are permitted if all effected\nresources share some perimeter (whether bridge or regular). Perimeter\nBridge does not contain access levels or services: those are governed\nentirely by the regular perimeter that resource is in.\n\nPerimeter Bridges are typically useful when building more complex\ntopologies with many independent perimeters that need to share some data\nwith a common perimeter, but should not be able to share data among\nthemselves."
  type        = string
  default     = null
}

variable "title" {
  description = "(required) - Human readable title. Must be unique within the Policy."
  type        = string
}

variable "status" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
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

