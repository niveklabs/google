variable "dataset" {
  description = "(required) - Identifies the dataset addressed by this request. Must be in the format\n'projects/{project}/locations/{location}/datasets/{dataset}'"
  type        = string
}

variable "disable_referential_integrity" {
  description = "(optional) - Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store\ncreation. The default value is false, meaning that the API will enforce referential integrity and fail the\nrequests that will result in inconsistent state in the FHIR store. When this field is set to true, the API\nwill skip referential integrity check. Consequently, operations that rely on references, such as\nPatient.get$everything, will not return all the results if broken references exist.\n\n** Changing this property may recreate the FHIR store (removing all data) **"
  type        = bool
  default     = null
}

variable "disable_resource_versioning" {
  description = "(optional) - Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation\nof FHIR store. If set to false, which is the default behavior, all write operations will cause historical\nversions to be recorded automatically. The historical versions can be fetched through the history APIs, but\ncannot be updated. If set to true, no historical versions will be kept. The server will send back errors for\nattempts to read the historical versions.\n\n** Changing this property may recreate the FHIR store (removing all data) **"
  type        = bool
  default     = null
}

variable "enable_history_import" {
  description = "(optional) - Whether to allow the bulk import API to accept history bundles and directly insert historical resource\nversions into the FHIR store. Importing resource histories creates resource interactions that appear to have\noccurred in the past, which clients may not want to allow. If set to false, history bundles within an import\nwill fail with an error.\n\n** Changing this property may recreate the FHIR store (removing all data) **\n\n** This property can be changed manually in the Google Cloud Healthcare admin console without recreating the FHIR store **"
  type        = bool
  default     = null
}

variable "enable_update_create" {
  description = "(optional) - Whether this FHIR store has the updateCreate capability. This determines if the client can use an Update\noperation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through\nthe Create operation and attempts to Update a non-existent resource will return errors. Please treat the audit\nlogs with appropriate levels of care if client-specified resource IDs contain sensitive data such as patient\nidentifiers, those IDs will be part of the FHIR resource path recorded in Cloud audit logs and Cloud Pub/Sub\nnotifications."
  type        = bool
  default     = null
}

variable "labels" {
  description = "(optional) - User-supplied key-value pairs used to organize FHIR stores.\n\nLabel keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must\nconform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}][\\p{Ll}\\p{Lo}\\p{N}_-]{0,62}\n\nLabel values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128\nbytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}\n\nNo more than 64 labels can be associated with a given store.\n\nAn object containing a list of \"key\": value pairs.\nExample: { \"name\": \"wrench\", \"mass\": \"1.3kg\", \"count\": \"3\" }."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - The resource name for the FhirStore.\n\n** Changing this property may recreate the FHIR store (removing all data) **"
  type        = string
}

variable "version" {
  description = "(required) - The FHIR specification version. Possible values: [\"DSTU2\", \"STU3\", \"R4\"]"
  type        = string
}

variable "notification_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      pubsub_topic = string
    }
  ))
  default = []
}

variable "stream_configs" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      bigquery_destination = list(object(
        {
          dataset_uri = string
          schema_config = list(object(
            {
              recursive_structure_depth = number
              schema_type               = string
            }
          ))
        }
      ))
      resource_types = list(string)
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

