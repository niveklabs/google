variable "custom_features" {
  description = "(optional) - Profile specifies the set of SSL features that can be used by the\nload balancer when negotiating SSL with clients. This can be one of\n'COMPATIBLE', 'MODERN', 'RESTRICTED', or 'CUSTOM'. If using 'CUSTOM',\nthe set of SSL features to enable must be specified in the\n'customFeatures' field.\n\nSee the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)\nfor which ciphers are available to use. **Note**: this argument\n*must* be present when using the 'CUSTOM' profile. This argument\n*must not* be present when using any other profile."
  type        = set(string)
  default     = null
}

variable "description" {
  description = "(optional) - An optional description of this resource."
  type        = string
  default     = null
}

variable "min_tls_version" {
  description = "(optional) - The minimum version of SSL protocol that can be used by the clients\nto establish a connection with the load balancer. Default value: \"TLS_1_0\" Possible values: [\"TLS_1_0\", \"TLS_1_1\", \"TLS_1_2\"]"
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash."
  type        = string
}

variable "profile" {
  description = "(optional) - Profile specifies the set of SSL features that can be used by the\nload balancer when negotiating SSL with clients. If using 'CUSTOM',\nthe set of SSL features to enable must be specified in the\n'customFeatures' field.\n\nSee the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)\nfor information on what cipher suites each profile provides. If\n'CUSTOM' is used, the 'custom_features' attribute **must be set**. Default value: \"COMPATIBLE\" Possible values: [\"COMPATIBLE\", \"MODERN\", \"RESTRICTED\", \"CUSTOM\"]"
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

