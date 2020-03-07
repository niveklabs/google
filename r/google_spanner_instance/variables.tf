variable "config" {
  description = "(required) - The name of the instance's configuration (similar but not\nquite the same as a region) which defines defines the geographic placement and\nreplication of your databases in this instance. It determines where your data\nis stored. Values are typically of the form 'regional-europe-west1' , 'us-central' etc.\nIn order to obtain a valid list please consult the\n[Configuration section of the docs](https://cloud.google.com/spanner/docs/instances)."
  type        = string
}

variable "display_name" {
  description = "(required) - The descriptive name for this instance as it appears in UIs. Must be\nunique per project and between 4 and 30 characters in length."
  type        = string
}

variable "labels" {
  description = "(optional) - An object containing a list of \"key\": value pairs.\nExample: { \"name\": \"wrench\", \"mass\": \"1.3kg\", \"count\": \"3\" }."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(optional) - A unique identifier for the instance, which cannot be changed after\nthe instance is created. The name must be between 6 and 30 characters\nin length.\n\n\nIf not provided, a random string starting with 'tf-' will be selected."
  type        = string
  default     = null
}

variable "num_nodes" {
  description = "(optional) - The number of nodes allocated to this instance."
  type        = number
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
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

