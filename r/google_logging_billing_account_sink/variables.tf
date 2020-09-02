variable "billing_account" {
  description = "(required) - The billing account exported to the sink."
  type        = string
}

variable "destination" {
  description = "(required) - The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, or a BigQuery dataset. Examples: \"storage.googleapis.com/[GCS_BUCKET]\" \"bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]\" \"pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]\" The writer associated with the sink must have access to write to the above resource."
  type        = string
}

variable "filter" {
  description = "(optional) - The filter to apply when exporting logs. Only log entries that match the filter are exported."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - The name of the logging sink."
  type        = string
}

variable "bigquery_options" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      use_partitioned_tables = bool
    }
  ))
  default = []
}

