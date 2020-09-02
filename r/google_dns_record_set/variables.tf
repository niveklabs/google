variable "managed_zone" {
  description = "(required) - The name of the zone in which this record set will reside."
  type        = string
}

variable "name" {
  description = "(required) - The DNS name this record set will apply to."
  type        = string
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "rrdatas" {
  description = "(required) - The string data for the records in this record set whose meaning depends on the DNS type. For TXT record, if the string data contains spaces, add surrounding \\\" if you don't want your string to get split on spaces. To specify a single record value longer than 255 characters such as a TXT record for DKIM, add \\\"\\\" inside the Terraform configuration string (e.g. \"first255characters\\\"\\\"morecharacters\")."
  type        = list(string)
}

variable "ttl" {
  description = "(required) - The time-to-live of this record set (seconds)."
  type        = number
}

variable "type" {
  description = "(required) - The DNS record set type."
  type        = string
}

