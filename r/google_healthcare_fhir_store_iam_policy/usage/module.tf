module "google_healthcare_fhir_store_iam_policy" {
  source = "./modules/google/r/google_healthcare_fhir_store_iam_policy"

  # fhir_store_id - (required) is a type of string
  fhir_store_id = null
  # policy_data - (required) is a type of string
  policy_data = null
}
