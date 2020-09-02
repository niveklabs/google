variable "description" {
  description = "(optional) - Description of the patch deployment. Length of the description is limited to 1024 characters."
  type        = string
  default     = null
}

variable "duration" {
  description = "(optional) - Duration of the patch. After the duration ends, the patch times out.\nA duration in seconds with up to nine fractional digits, terminated by 's'. Example: \"3.5s\""
  type        = string
  default     = null
}

variable "patch_deployment_id" {
  description = "(required) - A name for the patch deployment in the project. When creating a name the following rules apply:\n* Must contain only lowercase letters, numbers, and hyphens.\n* Must start with a letter.\n* Must be between 1-63 characters.\n* Must end with a number or a letter.\n* Must be unique within the project."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "instance_filter" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      all = bool
      group_labels = list(object(
        {
          labels = map(string)
        }
      ))
      instance_name_prefixes = list(string)
      instances              = list(string)
      zones                  = list(string)
    }
  ))
}

variable "one_time_schedule" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      execute_time = string
    }
  ))
  default = []
}

variable "patch_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      apt = list(object(
        {
          excludes           = list(string)
          exclusive_packages = list(string)
          type               = string
        }
      ))
      goo = list(object(
        {
          enabled = bool
        }
      ))
      post_step = list(object(
        {
          linux_exec_step_config = list(object(
            {
              allowed_success_codes = list(number)
              gcs_object = list(object(
                {
                  bucket            = string
                  generation_number = string
                  object            = string
                }
              ))
              interpreter = string
              local_path  = string
            }
          ))
          windows_exec_step_config = list(object(
            {
              allowed_success_codes = list(number)
              gcs_object = list(object(
                {
                  bucket            = string
                  generation_number = string
                  object            = string
                }
              ))
              interpreter = string
              local_path  = string
            }
          ))
        }
      ))
      pre_step = list(object(
        {
          linux_exec_step_config = list(object(
            {
              allowed_success_codes = list(number)
              gcs_object = list(object(
                {
                  bucket            = string
                  generation_number = string
                  object            = string
                }
              ))
              interpreter = string
              local_path  = string
            }
          ))
          windows_exec_step_config = list(object(
            {
              allowed_success_codes = list(number)
              gcs_object = list(object(
                {
                  bucket            = string
                  generation_number = string
                  object            = string
                }
              ))
              interpreter = string
              local_path  = string
            }
          ))
        }
      ))
      reboot_config = string
      windows_update = list(object(
        {
          classifications   = string
          excludes          = list(string)
          exclusive_patches = list(string)
        }
      ))
      yum = list(object(
        {
          excludes           = list(string)
          exclusive_packages = list(string)
          minimal            = bool
          security           = bool
        }
      ))
      zypper = list(object(
        {
          categories        = list(string)
          excludes          = list(string)
          exclusive_patches = list(string)
          severities        = list(string)
          with_optional     = bool
          with_update       = bool
        }
      ))
    }
  ))
  default = []
}

variable "recurring_schedule" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      end_time          = string
      last_execute_time = string
      monthly = list(object(
        {
          month_day = number
          week_day_of_month = list(object(
            {
              day_of_week  = string
              week_ordinal = number
            }
          ))
        }
      ))
      next_execute_time = string
      start_time        = string
      time_of_day = list(object(
        {
          hours   = number
          minutes = number
          nanos   = number
          seconds = number
        }
      ))
      time_zone = list(object(
        {
          id      = string
          version = string
        }
      ))
      weekly = list(object(
        {
          day_of_week = string
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
    }
  ))
  default = []
}

