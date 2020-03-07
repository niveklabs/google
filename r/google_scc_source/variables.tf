variable "description" {
  description = "(optional) - The description of the source (max of 1024 characters)."
  type        = string
  default     = null
}

variable "display_name" {
  description = "(required) - The source’s display name. A source’s display name must be unique\namongst its siblings, for example, two sources with the same parent\ncan't share the same display name. The display name must start and end\nwith a letter or digit, may contain letters, digits, spaces, hyphens,\nand underscores, and can be no longer than 32 characters."
  type        = string
}

variable "organization" {
  description = "(required) - The organization whose Cloud Security Command Center the Source\nlives in."
  type        = string
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

