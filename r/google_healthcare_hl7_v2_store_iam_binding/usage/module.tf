module "google_healthcare_hl7_v2_store_iam_binding" {
  source = "./modules/google/r/google_healthcare_hl7_v2_store_iam_binding"

  # hl7_v2_store_id - (required) is a type of string
  hl7_v2_store_id = null
  # members - (required) is a type of set of string
  members = []
  # role - (required) is a type of string
  role = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
