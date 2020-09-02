module "google_logging_project_exclusion" {
  source = "./modules/google/r/google_logging_project_exclusion"

  # description - (optional) is a type of string
  description = null
  # disabled - (optional) is a type of bool
  disabled = null
  # filter - (required) is a type of string
  filter = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
}
