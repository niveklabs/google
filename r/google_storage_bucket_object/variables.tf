variable "bucket" {
  description = "(required) - The name of the containing bucket."
  type        = string
}

variable "cache_control" {
  description = "(optional) - Cache-Control directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600"
  type        = string
  default     = null
}

variable "content" {
  description = "(optional) - Data as string to be uploaded. Must be defined if source is not. Note: The content field is marked as sensitive. To view the raw contents of the object, please define an output."
  type        = string
  default     = null
}

variable "content_disposition" {
  description = "(optional) - Content-Disposition of the object data."
  type        = string
  default     = null
}

variable "content_encoding" {
  description = "(optional) - Content-Encoding of the object data."
  type        = string
  default     = null
}

variable "content_language" {
  description = "(optional) - Content-Language of the object data."
  type        = string
  default     = null
}

variable "content_type" {
  description = "(optional) - Content-Type of the object data. Defaults to \"application/octet-stream\" or \"text/plain; charset=utf-8\"."
  type        = string
  default     = null
}

variable "detect_md5hash" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "metadata" {
  description = "(optional) - User-provided metadata, in key/value pairs."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - The name of the object. If you're interpolating the name of this object, see output_name instead."
  type        = string
}

variable "source" {
  description = "(optional) - A path to the data you want to upload. Must be defined if content is not."
  type        = string
  default     = null
}

variable "storage_class" {
  description = "(optional) - The StorageClass of the new bucket object. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. If not provided, this defaults to the bucket's default storage class or to a standard class."
  type        = string
  default     = null
}

