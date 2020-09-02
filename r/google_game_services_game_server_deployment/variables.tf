variable "deployment_id" {
  description = "(required) - A unique id for the deployment."
  type        = string
}

variable "description" {
  description = "(optional) - Human readable description of the game server deployment."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - The labels associated with this game server deployment. Each label is a\nkey-value pair."
  type        = map(string)
  default     = null
}

variable "location" {
  description = "(optional) - Location of the Deployment."
  type        = string
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

