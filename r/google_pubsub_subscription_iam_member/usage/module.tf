module "google_pubsub_subscription_iam_member" {
  source = "./modules/google/r/google_pubsub_subscription_iam_member"

  member       = null
  project      = null
  role         = null
  subscription = null
}
