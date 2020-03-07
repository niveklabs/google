variable "delete_service_on_destroy" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "env_variables" {
  description = "(optional) - Environment variables available to the application."
  type        = map(string)
  default     = null
}

variable "instance_class" {
  description = "(optional) - Instance class that is used to run this version. Valid values are\nAutomaticScaling F1, F2, F4, F4_1G\n(Only AutomaticScaling is supported at the moment)"
  type        = string
  default     = null
}

variable "noop_on_destroy" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "runtime" {
  description = "(required) - Desired runtime. Example python27."
  type        = string
}

variable "runtime_api_version" {
  description = "(optional) - The version of the API in the given runtime environment. \nPlease see the app.yaml reference for valid values at https://cloud.google.com/appengine/docs/standard//config/appref"
  type        = string
  default     = null
}

variable "service" {
  description = "(optional) - AppEngine service resource"
  type        = string
  default     = null
}

variable "threadsafe" {
  description = "(optional) - Whether multiple requests can be dispatched to this version at once."
  type        = bool
  default     = null
}

variable "version_id" {
  description = "(optional) - Relative name of the version within the service. For example, 'v1'. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names,\"default\", \"latest\", and any name with the prefix \"ah-\"."
  type        = string
  default     = null
}

variable "deployment" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      files = set(object(
        {
          name       = string
          sha1_sum   = string
          source_url = string
        }
      ))
      zip = list(object(
        {
          files_count = number
          source_url  = string
        }
      ))
    }
  ))
  default = []
}

variable "entrypoint" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      shell = string
    }
  ))
  default = []
}

variable "handlers" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      auth_fail_action            = string
      login                       = string
      redirect_http_response_code = string
      script = list(object(
        {
          script_path = string
        }
      ))
      security_level = string
      static_files = list(object(
        {
          application_readable  = bool
          expiration            = string
          http_headers          = map(string)
          mime_type             = string
          path                  = string
          require_matching_file = bool
          upload_path_regex     = string
        }
      ))
      url_regex = string
    }
  ))
  default = []
}

variable "libraries" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      name    = string
      version = string
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

