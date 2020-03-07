variable "description" {
  description = "(optional) - A descriptive comment."
  type        = string
  default     = null
}

variable "global_policy_evaluation_mode" {
  description = "(optional) - Controls the evaluation of a Google-maintained global admission policy\nfor common system-level images. Images not covered by the global\npolicy will be subject to the project admission policy."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "admission_whitelist_patterns" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      name_pattern = string
    }
  ))
  default = []
}

variable "cluster_admission_rules" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      cluster                 = string
      enforcement_mode        = string
      evaluation_mode         = string
      require_attestations_by = set(string)
    }
  ))
  default = []
}

variable "default_admission_rule" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      enforcement_mode        = string
      evaluation_mode         = string
      require_attestations_by = set(string)
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

