variable "display_name" {
  description = "(optional) - The display name for this template."
  type        = string
  default     = null
}

variable "force_delete" {
  description = "(optional) - This confirms the deletion of any possible tags using this template. Must be set to true in order to delete the tag template."
  type        = bool
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - Template location region."
  type        = string
  default     = null
}

variable "tag_template_id" {
  description = "(required) - The id of the tag template to create."
  type        = string
}

variable "fields" {
  description = "nested mode: NestingSet, min items: 1, max items: 0"
  type = set(object(
    {
      display_name = string
      field_id     = string
      is_required  = bool
      name         = string
      order        = number
      type = list(object(
        {
          enum_type = list(object(
            {
              allowed_values = set(object(
                {
                  display_name = string
                }
              ))
            }
          ))
          primitive_type = string
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

