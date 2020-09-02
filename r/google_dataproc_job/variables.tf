variable "force_delete" {
  description = "(optional) - By default, you can only delete inactive jobs within Dataproc. Setting this to true, and calling destroy, will ensure that the job is first cancelled before issuing the delete."
  type        = bool
  default     = null
}

variable "labels" {
  description = "(optional) - Optional. The labels to associate with this job."
  type        = map(string)
  default     = null
}

variable "project" {
  description = "(optional) - The project in which the cluster can be found and jobs subsequently run against. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The Cloud Dataproc region. This essentially determines which clusters are available for this job to be submitted to. If not specified, defaults to global."
  type        = string
  default     = null
}

variable "hadoop_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      archive_uris  = list(string)
      args          = list(string)
      file_uris     = list(string)
      jar_file_uris = list(string)
      logging_config = list(object(
        {
          driver_log_levels = map(string)
        }
      ))
      main_class        = string
      main_jar_file_uri = string
      properties        = map(string)
    }
  ))
  default = []
}

variable "hive_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      continue_on_failure = bool
      jar_file_uris       = list(string)
      properties          = map(string)
      query_file_uri      = string
      query_list          = list(string)
      script_variables    = map(string)
    }
  ))
  default = []
}

variable "pig_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      continue_on_failure = bool
      jar_file_uris       = list(string)
      logging_config = list(object(
        {
          driver_log_levels = map(string)
        }
      ))
      properties       = map(string)
      query_file_uri   = string
      query_list       = list(string)
      script_variables = map(string)
    }
  ))
  default = []
}

variable "placement" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      cluster_name = string
      cluster_uuid = string
    }
  ))
}

variable "pyspark_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      archive_uris  = list(string)
      args          = list(string)
      file_uris     = list(string)
      jar_file_uris = list(string)
      logging_config = list(object(
        {
          driver_log_levels = map(string)
        }
      ))
      main_python_file_uri = string
      properties           = map(string)
      python_file_uris     = list(string)
    }
  ))
  default = []
}

variable "reference" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      job_id = string
    }
  ))
  default = []
}

variable "scheduling" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      max_failures_per_hour = number
    }
  ))
  default = []
}

variable "spark_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      archive_uris  = list(string)
      args          = list(string)
      file_uris     = list(string)
      jar_file_uris = list(string)
      logging_config = list(object(
        {
          driver_log_levels = map(string)
        }
      ))
      main_class        = string
      main_jar_file_uri = string
      properties        = map(string)
    }
  ))
  default = []
}

variable "sparksql_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      jar_file_uris = list(string)
      logging_config = list(object(
        {
          driver_log_levels = map(string)
        }
      ))
      properties       = map(string)
      query_file_uri   = string
      query_list       = list(string)
      script_variables = map(string)
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
    }
  ))
  default = []
}

