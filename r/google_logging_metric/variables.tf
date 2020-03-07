variable "description" {
  description = "(optional) - A description of this metric, which is used in documentation. The maximum length of the\ndescription is 8000 characters."
  type        = string
  default     = null
}

variable "filter" {
  description = "(required) - An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-filters) which\nis used to match log entries."
  type        = string
}

variable "label_extractors" {
  description = "(optional) - A map from a label key string to an extractor expression which is used to extract data from a log\nentry field and assign as the label value. Each label key specified in the LabelDescriptor must\nhave an associated extractor expression in this map. The syntax of the extractor expression is\nthe same as for the valueExtractor field."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - The client-assigned metric identifier. Examples - \"error_count\", \"nginx/requests\".\nMetric identifiers are limited to 100 characters and can include only the following\ncharacters A-Z, a-z, 0-9, and the special characters _-.,+!*',()%/. The forward-slash\ncharacter (/) denotes a hierarchy of name pieces, and it cannot be the first character\nof the name."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "value_extractor" {
  description = "(optional) - A valueExtractor is required when using a distribution logs-based metric to extract the values to\nrecord from a log entry. Two functions are supported for value extraction - EXTRACT(field) or\nREGEXP_EXTRACT(field, regex). The argument are 1. field - The name of the log entry field from which\nthe value is to be extracted. 2. regex - A regular expression using the Google RE2 syntax\n(https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified\nlog entry field. The value of the field is converted to a string before applying the regex. It is an\nerror to specify a regex that does not include exactly one capture group."
  type        = string
  default     = null
}

variable "bucket_options" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      explicit_buckets = list(object(
        {
          bounds = list(number)
        }
      ))
      exponential_buckets = list(object(
        {
          growth_factor      = number
          num_finite_buckets = number
          scale              = number
        }
      ))
      linear_buckets = list(object(
        {
          num_finite_buckets = number
          offset             = number
          width              = number
        }
      ))
    }
  ))
  default = []
}

variable "metric_descriptor" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      display_name = string
      labels = set(object(
        {
          description = string
          key         = string
          value_type  = string
        }
      ))
      metric_kind = string
      unit        = string
      value_type  = string
    }
  ))
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

