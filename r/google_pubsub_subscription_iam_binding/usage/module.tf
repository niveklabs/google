module "google_pubsub_subscription_iam_binding" {
  source = "./google/r/google_pubsub_subscription_iam_binding"

  members      = []
  project      = null
  role         = null
  subscription = null
}
