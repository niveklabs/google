variable "domain" {
  description = "(required) - The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions, \nhttps://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "selective_authentication" {
  description = "(optional) - Whether the trusted side has forest/domain wide access or selective access to an approved set of resources."
  type        = bool
  default     = null
}

variable "target_dns_ip_addresses" {
  description = "(required) - The target DNS server IP addresses which can resolve the remote domain involved in the trust."
  type        = set(string)
}

variable "target_domain_name" {
  description = "(required) - The fully qualified target domain name which will be in trust with the current domain."
  type        = string
}

variable "trust_direction" {
  description = "(required) - The trust direction, which decides if the current domain is trusted, trusting, or both. Possible values: [\"INBOUND\", \"OUTBOUND\", \"BIDIRECTIONAL\"]"
  type        = string
}

variable "trust_handshake_secret" {
  description = "(required) - The trust secret used for the handshake with the target domain. This will not be stored."
  type        = string
}

variable "trust_type" {
  description = "(required) - The type of trust represented by the trust resource. Possible values: [\"FOREST\", \"EXTERNAL\"]"
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

