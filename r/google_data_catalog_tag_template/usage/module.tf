module "google_data_catalog_tag_template" {
  source = "./modules/google/r/google_data_catalog_tag_template"

  # display_name - (optional) is a type of string
  display_name = null
  # force_delete - (optional) is a type of bool
  force_delete = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # tag_template_id - (required) is a type of string
  tag_template_id = null

  fields = [{
    display_name = null
    field_id     = null
    is_required  = null
    name         = null
    order        = null
    type = [{
      enum_type = [{
        allowed_values = [{
          display_name = null
        }]
      }]
      primitive_type = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
