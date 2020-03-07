variable "app_profile_id" {
  description = "(required) - The unique name of the app profile in the form '[_a-zA-Z0-9][-_.a-zA-Z0-9]*'."
  type        = string
}

variable "description" {
  description = "(optional) - Long form description of the use case for this app profile."
  type        = string
  default     = null
}

variable "ignore_warnings" {
  description = "(optional) - If true, ignore safety checks when deleting/updating the app profile."
  type        = bool
  default     = null
}

variable "instance" {
  description = "(optional) - The name of the instance to create the app profile within."
  type        = string
  default     = null
}

variable "multi_cluster_routing_use_any" {
  description = "(optional) - If true, read/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available\nin the event of transient errors or delays. Clusters in a region are considered equidistant. Choosing this option sacrifices read-your-writes\nconsistency to improve availability."
  type        = bool
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "single_cluster_routing" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      allow_transactional_writes = bool
      cluster_id                 = string
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

