module "google_kms_key_ring_iam_policy" {
  source = "./modules/google/r/google_kms_key_ring_iam_policy"

  # key_ring_id - (required) is a type of string
  key_ring_id = null
  # policy_data - (required) is a type of string
  policy_data = null
}
