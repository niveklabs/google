variable "ancestor" {
  description = "(optional) - Policy for including ancestors in the index. Default value: \"NONE\" Possible values: [\"NONE\", \"ALL_ANCESTORS\"]"
  type        = string
  default     = null
}

variable "kind" {
  description = "(required) - The entity kind which the index applies to."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "properties" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      direction = string
      name      = string
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

