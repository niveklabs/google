variable "location" {
  description = "(optional) - The location (region or zone) in which the cluster master will be created, as well as the default node location. If you specify a zone (such as us-central1-a), the cluster will be a zonal cluster with a single cluster master. If you specify a region (such as us-west1), the cluster will be a regional cluster with multiple masters spread across zones in the region, and with default node locations in those zones as well."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - The name of the cluster, unique within the project and location."
  type        = string
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The region in which the cluster master will be created. Zone and region have been removed in favor of location."
  type        = string
  default     = null
}

variable "zone" {
  description = "(optional) - The zone in which the cluster master will be created. Zone and region have been removed in favor of location."
  type        = string
  default     = null
}

