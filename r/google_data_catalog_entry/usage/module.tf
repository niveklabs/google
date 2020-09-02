module "google_data_catalog_entry" {
  source = "./modules/google/r/google_data_catalog_entry"

  # description - (optional) is a type of string
  description = null
  # display_name - (optional) is a type of string
  display_name = null
  # entry_group - (required) is a type of string
  entry_group = null
  # entry_id - (required) is a type of string
  entry_id = null
  # linked_resource - (optional) is a type of string
  linked_resource = null
  # schema - (optional) is a type of string
  schema = null
  # type - (optional) is a type of string
  type = null
  # user_specified_system - (optional) is a type of string
  user_specified_system = null
  # user_specified_type - (optional) is a type of string
  user_specified_type = null

  gcs_fileset_spec = [{
    file_patterns = []
    sample_gcs_file_specs = [{
      file_path  = null
      size_bytes = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
