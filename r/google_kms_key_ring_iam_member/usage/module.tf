module "google_kms_key_ring_iam_member" {
  source = "./google/r/google_kms_key_ring_iam_member"

  key_ring_id = null
  member      = null
  role        = null
}
