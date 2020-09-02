variable "additional_experiments" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "ip_configuration" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "machine_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "max_workers" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "network" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "on_delete" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "parameters" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "service_account_email" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "subnetwork" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "temp_gcs_location" {
  description = "(required)"
  type        = string
}

variable "template_gcs_path" {
  description = "(required)"
  type        = string
}

variable "zone" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      update = string
    }
  ))
  default = []
}

