variable "description" {
  description = "(optional) - Entry description, which can consist of several sentences or paragraphs that describe entry contents."
  type        = string
  default     = null
}

variable "display_name" {
  description = "(optional) - Display information such as title and description. A short name to identify the entry,\nfor example, \"Analytics Data - Jan 2011\"."
  type        = string
  default     = null
}

variable "entry_group" {
  description = "(required) - The name of the entry group this entry is in."
  type        = string
}

variable "entry_id" {
  description = "(required) - The id of the entry to create."
  type        = string
}

variable "linked_resource" {
  description = "(optional) - The resource this metadata entry refers to.\nFor Google Cloud Platform resources, linkedResource is the full name of the resource.\nFor example, the linkedResource for a table resource from BigQuery is:\n//bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId\nOutput only when Entry is of type in the EntryType enum. For entries with userSpecifiedType,\nthis field is optional and defaults to an empty string."
  type        = string
  default     = null
}

variable "schema" {
  description = "(optional) - Schema of the entry (e.g. BigQuery, GoogleSQL, Avro schema), as a json string. An entry might not have any schema\nattached to it. See\nhttps://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries#schema\nfor what fields this schema can contain."
  type        = string
  default     = null
}

variable "type" {
  description = "(optional) - The type of the entry. Only used for Entries with types in the EntryType enum.\nCurrently, only FILESET enum value is allowed. All other entries created through Data Catalog must use userSpecifiedType. Possible values: [\"FILESET\"]"
  type        = string
  default     = null
}

variable "user_specified_system" {
  description = "(optional) - This field indicates the entry's source system that Data Catalog does not integrate with.\nuserSpecifiedSystem strings must begin with a letter or underscore and can only contain letters, numbers,\nand underscores; are case insensitive; must be at least 1 character and at most 64 characters long."
  type        = string
  default     = null
}

variable "user_specified_type" {
  description = "(optional) - Entry type if it does not fit any of the input-allowed values listed in EntryType enum above.\nWhen creating an entry, users should check the enum values first, if nothing matches the entry\nto be created, then provide a custom value, for example \"my_special_type\".\nuserSpecifiedType strings must begin with a letter or underscore and can only contain letters,\nnumbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long."
  type        = string
  default     = null
}

variable "gcs_fileset_spec" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      file_patterns = list(string)
      sample_gcs_file_specs = list(object(
        {
          file_path  = string
          size_bytes = number
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

