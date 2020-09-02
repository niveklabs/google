module "google_healthcare_hl7_v2_store_iam_member" {
  source = "./modules/google/r/google_healthcare_hl7_v2_store_iam_member"

  # hl7_v2_store_id - (required) is a type of string
  hl7_v2_store_id = null
  # member - (required) is a type of string
  member = null
  # role - (required) is a type of string
  role = null
}
