variable "admin" {
  description = "(optional) - The name of delegated administrator account used to perform Active Directory operations. \nIf not specified, setupadmin will be used."
  type        = string
  default     = null
}

variable "authorized_networks" {
  description = "(optional) - The full names of the Google Compute Engine networks the domain instance is connected to. The domain is only available on networks listed in authorizedNetworks.\nIf CIDR subnets overlap between networks, domain creation will fail."
  type        = set(string)
  default     = null
}

variable "domain_name" {
  description = "(required) - The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions, \nhttps://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains."
  type        = string
}

variable "labels" {
  description = "(optional) - Resource labels that can contain user-provided metadata"
  type        = map(string)
  default     = null
}

variable "locations" {
  description = "(required) - Locations where domain needs to be provisioned. [regions][compute/docs/regions-zones/] \ne.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block."
  type        = list(string)
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "reserved_ip_range" {
  description = "(required) - The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. \nRanges must be unique and non-overlapping with existing subnets in authorizedNetworks"
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

