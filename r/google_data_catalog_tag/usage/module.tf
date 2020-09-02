module "google_data_catalog_tag" {
  source = "./modules/google/r/google_data_catalog_tag"

  # column - (optional) is a type of string
  column = null
  # parent - (optional) is a type of string
  parent = null
  # template - (required) is a type of string
  template = null

  fields = [{
    bool_value      = null
    display_name    = null
    double_value    = null
    enum_value      = null
    field_name      = null
    order           = null
    string_value    = null
    timestamp_value = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
