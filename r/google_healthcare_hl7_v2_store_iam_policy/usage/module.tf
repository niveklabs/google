module "google_healthcare_hl7_v2_store_iam_policy" {
  source = "./modules/google/r/google_healthcare_hl7_v2_store_iam_policy"

  # hl7_v2_store_id - (required) is a type of string
  hl7_v2_store_id = null
  # policy_data - (required) is a type of string
  policy_data = null
}
