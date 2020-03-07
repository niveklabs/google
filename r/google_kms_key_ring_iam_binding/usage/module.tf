module "google_kms_key_ring_iam_binding" {
  source = "./google/r/google_kms_key_ring_iam_binding"

  key_ring_id = null
  members     = []
  role        = null
}
