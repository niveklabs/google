variable "module_id" {
  description = "(required) - The ID of the App Engine module underlying this service. \nCorresponds to the 'moduleId' resource label for a 'gae_app'\nmonitored resource(see https://cloud.google.com/monitoring/api/resources#tag_gae_app)"
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

