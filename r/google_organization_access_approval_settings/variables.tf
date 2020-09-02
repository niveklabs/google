variable "notification_emails" {
  description = "(optional) - A list of email addresses to which notifications relating to approval requests should be sent.\nNotifications relating to a resource will be sent to all emails in the settings of ancestor\nresources of that resource. A maximum of 50 email addresses are allowed."
  type        = set(string)
  default     = null
}

variable "organization_id" {
  description = "(required) - ID of the organization of the access approval settings."
  type        = string
}

variable "enrolled_services" {
  description = "nested mode: NestingSet, min items: 1, max items: 0"
  type = set(object(
    {
      cloud_product    = string
      enrollment_level = string
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

