module "google_logging_folder_exclusion" {
  source = "./modules/google/r/google_logging_folder_exclusion"

  # description - (optional) is a type of string
  description = null
  # disabled - (optional) is a type of bool
  disabled = null
  # filter - (required) is a type of string
  filter = null
  # folder - (required) is a type of string
  folder = null
  # name - (required) is a type of string
  name = null
}
