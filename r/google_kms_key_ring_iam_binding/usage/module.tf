module "google_kms_key_ring_iam_binding" {
  source = "./modules/google/r/google_kms_key_ring_iam_binding"

  # key_ring_id - (required) is a type of string
  key_ring_id = null
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
