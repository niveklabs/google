variable "description" {
  description = "(required) - A detailed description of the metric, which can be used in documentation."
  type        = string
}

variable "display_name" {
  description = "(required) - A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example \"Request count\"."
  type        = string
}

variable "launch_stage" {
  description = "(optional) - The launch stage of the metric definition. Possible values: [\"LAUNCH_STAGE_UNSPECIFIED\", \"UNIMPLEMENTED\", \"PRELAUNCH\", \"EARLY_ACCESS\", \"ALPHA\", \"BETA\", \"GA\", \"DEPRECATED\"]"
  type        = string
  default     = null
}

variable "metric_kind" {
  description = "(required) - Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metricKind and valueType might not be supported. Possible values: [\"METRIC_KIND_UNSPECIFIED\", \"GAUGE\", \"DELTA\", \"CUMULATIVE\"]"
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "type" {
  description = "(required) - The metric type, including its DNS name prefix. The type is not URL-encoded. All service defined metrics must be prefixed with the service name, in the format of {service name}/{relative metric name}, such as cloudsql.googleapis.com/database/cpu/utilization. The relative metric name must have only upper and lower-case letters, digits, '/' and underscores '_' are allowed. Additionally, the maximum number of characters allowed for the relative_metric_name is 100. All user-defined metric types have the DNS name custom.googleapis.com, external.googleapis.com, or logging.googleapis.com/user/."
  type        = string
}

variable "unit" {
  description = "(optional) - The units in which the metric value is reported. It is only applicable if the\nvalueType is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of \nthe stored metric values. \n\nDifferent systems may scale the values to be more easily displayed (so a value of \n0.02KBy might be displayed as 20By, and a value of 3523KBy might be displayed as \n3.5MBy). However, if the unit is KBy, then the value of the metric is always in \nthousands of bytes, no matter how it may be displayed. \n\nIf you want a custom metric to record the exact number of CPU-seconds used by a job, \nyou can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or equivalently \n1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then the value is written as \n12005. \n\nAlternatively, if you want a custom metric to record data in a more granular way, you \ncan create a DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value \n12.005 (which is 12005/1000), or use Kis{CPU} and write 11.723 (which is 12005/1024). \nThe supported units are a subset of The Unified Code for Units of Measure standard.\nMore info can be found in the API documentation \n(https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors)."
  type        = string
  default     = null
}

variable "value_type" {
  description = "(required) - Whether the measurement is an integer, a floating-point number, etc. Some combinations of metricKind and valueType might not be supported. Possible values: [\"BOOL\", \"INT64\", \"DOUBLE\", \"STRING\", \"DISTRIBUTION\"]"
  type        = string
}

variable "labels" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      description = string
      key         = string
      value_type  = string
    }
  ))
  default = []
}

variable "metadata" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      ingest_delay  = string
      sample_period = string
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

