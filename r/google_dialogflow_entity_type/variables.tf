variable "display_name" {
  description = "(required) - The name of this entity type to be displayed on the console."
  type        = string
}

variable "enable_fuzzy_extraction" {
  description = "(optional) - Enables fuzzy entity extraction during classification."
  type        = bool
  default     = null
}

variable "kind" {
  description = "(required) - Indicates the kind of entity type.\n* KIND_MAP: Map entity types allow mapping of a group of synonyms to a reference value.\n* KIND_LIST: List entity types contain a set of entries that do not map to reference values. However, list entity\ntypes can contain references to other entity types (with or without aliases).\n* KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values. Possible values: [\"KIND_MAP\", \"KIND_LIST\", \"KIND_REGEXP\"]"
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "entities" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      synonyms = list(string)
      value    = string
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

