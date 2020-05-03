module "google_pubsub_subscription_iam_policy" {
  source = "./modules/google/r/google_pubsub_subscription_iam_policy"

  policy_data  = null
  project      = null
  subscription = null
}
