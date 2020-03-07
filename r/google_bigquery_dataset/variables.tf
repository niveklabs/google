variable "dataset_id" {
  description = "(required) - A unique ID for this dataset, without the project name. The ID\nmust contain only letters (a-z, A-Z), numbers (0-9), or\nunderscores (_). The maximum length is 1,024 characters."
  type        = string
}

variable "default_partition_expiration_ms" {
  description = "(optional) - The default partition expiration for all partitioned tables in\nthe dataset, in milliseconds.\n\n\nOnce this property is set, all newly-created partitioned tables in\nthe dataset will have an 'expirationMs' property in the 'timePartitioning'\nsettings set to this value, and changing the value will only\naffect new tables, not existing ones. The storage in a partition will\nhave an expiration time of its partition time plus this value.\nSetting this property overrides the use of 'defaultTableExpirationMs'\nfor partitioned tables: only one of 'defaultTableExpirationMs' and\n'defaultPartitionExpirationMs' will be used for any new partitioned\ntable. If you provide an explicit 'timePartitioning.expirationMs' when\ncreating or updating a partitioned table, that value takes precedence\nover the default partition expiration time indicated by this property."
  type        = number
  default     = null
}

variable "default_table_expiration_ms" {
  description = "(optional) - The default lifetime of all tables in the dataset, in milliseconds.\nThe minimum value is 3600000 milliseconds (one hour).\n\n\nOnce this property is set, all newly-created tables in the dataset\nwill have an 'expirationTime' property set to the creation time plus\nthe value in this property, and changing the value will only affect\nnew tables, not existing ones. When the 'expirationTime' for a given\ntable is reached, that table will be deleted automatically.\nIf a table's 'expirationTime' is modified or removed before the\ntable expires, or if you provide an explicit 'expirationTime' when\ncreating a table, that value takes precedence over the default\nexpiration time indicated by this property."
  type        = number
  default     = null
}

variable "delete_contents_on_destroy" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "description" {
  description = "(optional) - A user-friendly description of the dataset"
  type        = string
  default     = null
}

variable "friendly_name" {
  description = "(optional) - A descriptive name for the dataset"
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - The labels associated with this dataset. You can use these to\norganize and group your datasets"
  type        = map(string)
  default     = null
}

variable "location" {
  description = "(optional) - The geographic location where the dataset should reside.\nSee [official docs](https://cloud.google.com/bigquery/docs/dataset-locations).\n\n\nThere are two types of locations, regional or multi-regional. A regional\nlocation is a specific geographic place, such as Tokyo, and a multi-regional\nlocation is a large geographic area, such as the United States, that\ncontains at least two geographic places.\n\n\nPossible regional values include: 'asia-east1', 'asia-northeast1',\n'asia-southeast1', 'australia-southeast1', 'europe-north1',\n'europe-west2' and 'us-east4'.\n\n\nPossible multi-regional values: 'EU' and 'US'.\n\n\nThe default value is multi-regional location 'US'.\nChanging this forces a new resource to be created."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "access" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      domain         = string
      group_by_email = string
      role           = string
      special_group  = string
      user_by_email  = string
      view = list(object(
        {
          dataset_id = string
          project_id = string
          table_id   = string
        }
      ))
    }
  ))
  default = []
}

variable "default_encryption_configuration" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      kms_key_name = string
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

