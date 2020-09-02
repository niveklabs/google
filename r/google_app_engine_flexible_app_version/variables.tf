variable "beta_settings" {
  description = "(optional) - Metadata settings that are supplied to this version to enable beta runtime features."
  type        = map(string)
  default     = null
}

variable "default_expiration" {
  description = "(optional) - Duration that static files should be cached by web proxies and browsers.\nOnly applicable if the corresponding StaticFilesHandler does not specify its own expiration time."
  type        = string
  default     = null
}

variable "delete_service_on_destroy" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "env_variables" {
  description = "(optional) - Environment variables available to the application.  As these are not returned in the API request, Terraform will not detect any changes made outside of the Terraform config."
  type        = map(string)
  default     = null
}

variable "inbound_services" {
  description = "(optional) - Before an application can receive email or XMPP messages, the application must be configured to enable the service."
  type        = set(string)
  default     = null
}

variable "instance_class" {
  description = "(optional) - Instance class that is used to run this version. Valid values are\nAutomaticScaling: F1, F2, F4, F4_1G\nManualScaling: B1, B2, B4, B8, B4_1G\nDefaults to F1 for AutomaticScaling and B1 for ManualScaling."
  type        = string
  default     = null
}

variable "nobuild_files_regex" {
  description = "(optional) - Files that match this pattern will not be built into this version. Only applicable for Go runtimes."
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
  description = "(optional) - The version of the API in the given runtime environment.\nPlease see the app.yaml reference for valid values at https://cloud.google.com/appengine/docs/standard//config/appref"
  type        = string
  default     = null
}

variable "runtime_channel" {
  description = "(optional) - The channel of the runtime to use. Only available for some runtimes."
  type        = string
  default     = null
}

variable "runtime_main_executable_path" {
  description = "(optional) - The path or name of the app's main executable."
  type        = string
  default     = null
}

variable "service" {
  description = "(required) - AppEngine service resource"
  type        = string
}

variable "serving_status" {
  description = "(optional) - Current serving status of this version. Only the versions with a SERVING status create instances and can be billed. Default value: \"SERVING\" Possible values: [\"SERVING\", \"STOPPED\"]"
  type        = string
  default     = null
}

variable "version_id" {
  description = "(optional) - Relative name of the version within the service. For example, 'v1'. Version names can contain only lowercase letters, numbers, or hyphens.\nReserved names,\"default\", \"latest\", and any name with the prefix \"ah-\"."
  type        = string
  default     = null
}

variable "api_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      auth_fail_action = string
      login            = string
      script           = string
      security_level   = string
      url              = string
    }
  ))
  default = []
}

variable "automatic_scaling" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      cool_down_period = string
      cpu_utilization = list(object(
        {
          aggregation_window_length = string
          target_utilization        = number
        }
      ))
      disk_utilization = list(object(
        {
          target_read_bytes_per_second  = number
          target_read_ops_per_second    = number
          target_write_bytes_per_second = number
          target_write_ops_per_second   = number
        }
      ))
      max_concurrent_requests = number
      max_idle_instances      = number
      max_pending_latency     = string
      max_total_instances     = number
      min_idle_instances      = number
      min_pending_latency     = string
      min_total_instances     = number
      network_utilization = list(object(
        {
          target_received_bytes_per_second   = number
          target_received_packets_per_second = number
          target_sent_bytes_per_second       = number
          target_sent_packets_per_second     = number
        }
      ))
      request_utilization = list(object(
        {
          target_concurrent_requests      = number
          target_request_count_per_second = string
        }
      ))
    }
  ))
  default = []
}

variable "deployment" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      cloud_build_options = list(object(
        {
          app_yaml_path       = string
          cloud_build_timeout = string
        }
      ))
      container = list(object(
        {
          image = string
        }
      ))
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

variable "endpoints_api_service" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      config_id              = string
      disable_trace_sampling = bool
      name                   = string
      rollout_strategy       = string
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

variable "liveness_check" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      check_interval    = string
      failure_threshold = number
      host              = string
      initial_delay     = string
      path              = string
      success_threshold = number
      timeout           = string
    }
  ))
}

variable "manual_scaling" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      instances = number
    }
  ))
  default = []
}

variable "network" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      forwarded_ports  = list(string)
      instance_tag     = string
      name             = string
      session_affinity = bool
      subnetwork       = string
    }
  ))
  default = []
}

variable "readiness_check" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      app_start_timeout = string
      check_interval    = string
      failure_threshold = number
      host              = string
      path              = string
      success_threshold = number
      timeout           = string
    }
  ))
}

variable "resources" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      cpu       = number
      disk_gb   = number
      memory_gb = number
      volumes = list(object(
        {
          name        = string
          size_gb     = number
          volume_type = string
        }
      ))
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

variable "vpc_access_connector" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      name = string
    }
  ))
  default = []
}

