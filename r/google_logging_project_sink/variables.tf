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

variable "project" {
  description = "(optional) - The ID of the project to create the sink in. If omitted, the project associated with the provider is used."
  type        = string
  default     = null
}

variable "unique_writer_identity" {
  description = "(optional) - Whether or not to create a unique identity associated with this sink. If false (the default), then the writer_identity used is serviceAccount:cloud-logs@system.gserviceaccount.com. If true, then a unique service account is created and used for this sink. If you wish to publish logs across projects, you must set unique_writer_identity to true."
  type        = bool
  default     = null
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

