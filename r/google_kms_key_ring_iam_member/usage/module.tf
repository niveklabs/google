module "google_kms_key_ring_iam_member" {
  source = "./modules/google/r/google_kms_key_ring_iam_member"

  # key_ring_id - (required) is a type of string
  key_ring_id = null
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
