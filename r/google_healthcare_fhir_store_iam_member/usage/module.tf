module "google_healthcare_fhir_store_iam_member" {
  source = "./modules/google/r/google_healthcare_fhir_store_iam_member"

  # fhir_store_id - (required) is a type of string
  fhir_store_id = null
  # member - (required) is a type of string
  member = null
  # role - (required) is a type of string
  role = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
