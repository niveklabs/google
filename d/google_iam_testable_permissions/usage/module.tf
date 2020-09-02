module "google_iam_testable_permissions" {
  source = "./modules/google/d/google_iam_testable_permissions"

  # custom_support_level - (optional) is a type of string
  custom_support_level = null
  # full_resource_name - (required) is a type of string
  full_resource_name = null
  # stages - (optional) is a type of list of string
  stages = []
}
