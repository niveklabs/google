variable "bucket_id" {
  description = "(required) - The name of the logging bucket. Logging automatically creates two log buckets: _Required and _Default."
  type        = string
}

variable "description" {
  description = "(optional) - An optional description for this bucket."
  type        = string
  default     = null
}

variable "folder" {
  description = "(required) - The parent resource that contains the logging bucket."
  type        = string
}

variable "location" {
  description = "(required) - The location of the bucket. The supported locations are: \"global\" \"us-central1\""
  type        = string
}

variable "retention_days" {
  description = "(optional) - Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used."
  type        = number
  default     = null
}

