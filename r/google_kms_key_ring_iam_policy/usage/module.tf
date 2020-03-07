module "google_kms_key_ring_iam_policy" {
  source = "./google/r/google_kms_key_ring_iam_policy"

  key_ring_id = null
  policy_data = null
}
