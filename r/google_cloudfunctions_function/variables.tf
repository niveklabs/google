variable "available_memory_mb" {
  description = "(optional) - Memory (in MB), available to the function. Default value is 256MB. Allowed values are: 128MB, 256MB, 512MB, 1024MB, and 2048MB."
  type        = number
  default     = null
}

variable "description" {
  description = "(optional) - Description of the function."
  type        = string
  default     = null
}

variable "entry_point" {
  description = "(optional) - Name of the function that will be executed when the Google Cloud Function is triggered."
  type        = string
  default     = null
}

variable "environment_variables" {
  description = "(optional) - A set of key/value environment variable pairs to assign to the function."
  type        = map(string)
  default     = null
}

variable "https_trigger_url" {
  description = "(optional) - URL which triggers function execution. Returned only if trigger_http is used."
  type        = string
  default     = null
}

variable "ingress_settings" {
  description = "(optional) - String value that controls what traffic can reach the function. Allowed values are ALLOW_ALL and ALLOW_INTERNAL_ONLY. Changes to this field will recreate the cloud function."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - A set of key/value label pairs to assign to the function. Label keys must follow the requirements at https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements."
  type        = map(string)
  default     = null
}

variable "max_instances" {
  description = "(optional) - The limit on the maximum number of function instances that may coexist at a given time."
  type        = number
  default     = null
}

variable "name" {
  description = "(required) - A user-defined name of the function. Function names must be unique globally."
  type        = string
}

variable "project" {
  description = "(optional) - Project of the function. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - Region of function. Currently can be only \"us-central1\". If it is not provided, the provider region is used."
  type        = string
  default     = null
}

variable "runtime" {
  description = "(required) - The runtime in which the function is going to run. Eg. \"nodejs8\", \"nodejs10\", \"python37\", \"go111\"."
  type        = string
}

variable "service_account_email" {
  description = "(optional) -  If provided, the self-provided service account to run the function with."
  type        = string
  default     = null
}

variable "source_archive_bucket" {
  description = "(optional) - The GCS bucket containing the zip archive which contains the function."
  type        = string
  default     = null
}

variable "source_archive_object" {
  description = "(optional) - The source archive object (file) in archive bucket."
  type        = string
  default     = null
}

variable "timeout" {
  description = "(optional) - Timeout (in seconds) for the function. Default value is 60 seconds. Cannot be more than 540 seconds."
  type        = number
  default     = null
}

variable "trigger_http" {
  description = "(optional) - Boolean variable. Any HTTP request (of a supported type) to the endpoint will trigger function execution. Supported HTTP request types are: POST, PUT, GET, DELETE, and OPTIONS. Endpoint is returned as https_trigger_url. Cannot be used with trigger_bucket and trigger_topic."
  type        = bool
  default     = null
}

variable "vpc_connector" {
  description = "(optional) - The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is projects/*/locations/*/connectors/*."
  type        = string
  default     = null
}

variable "vpc_connector_egress_settings" {
  description = "(optional) - The egress settings for the connector, controlling what traffic is diverted through it. Allowed values are ALL_TRAFFIC and PRIVATE_RANGES_ONLY. Defaults to PRIVATE_RANGES_ONLY. If unset, this field preserves the previously set value."
  type        = string
  default     = null
}

variable "event_trigger" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      event_type = string
      failure_policy = list(object(
        {
          retry = bool
        }
      ))
      resource = string
    }
  ))
  default = []
}

variable "source_repository" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      deployed_url = string
      url          = string
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
      read   = string
      update = string
    }
  ))
  default = []
}

