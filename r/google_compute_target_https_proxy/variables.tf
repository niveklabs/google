variable "description" {
  description = "(optional) - An optional description of this resource."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "quic_override" {
  description = "(optional) - Specifies the QUIC override policy for this resource. This determines\nwhether the load balancer will attempt to negotiate QUIC with clients\nor not. Can specify one of NONE, ENABLE, or DISABLE. If NONE is\nspecified, uses the QUIC policy with no user overrides, which is\nequivalent to DISABLE. Not specifying this field is equivalent to\nspecifying NONE."
  type        = string
  default     = null
}

variable "ssl_certificates" {
  description = "(required) - A list of SslCertificate resources that are used to authenticate\nconnections between users and the load balancer. At least one SSL\ncertificate must be specified."
  type        = list(string)
}

variable "ssl_policy" {
  description = "(optional) - A reference to the SslPolicy resource that will be associated with\nthe TargetHttpsProxy resource. If not set, the TargetHttpsProxy\nresource will not have any SSL policy configured."
  type        = string
  default     = null
}

variable "url_map" {
  description = "(required) - A reference to the UrlMap resource that defines the mapping from URL\nto the BackendService."
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

