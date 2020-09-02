module "google_healthcare_fhir_store_iam_binding" {
  source = "./modules/google/r/google_healthcare_fhir_store_iam_binding"

  # fhir_store_id - (required) is a type of string
  fhir_store_id = null
  # members - (required) is a type of set of string
  members = []
  # role - (required) is a type of string
  role = null
}
