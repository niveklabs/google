module "google_pubsub_topic_iam_member" {
  source = "./modules/google/r/google_pubsub_topic_iam_member"

  member  = null
  project = null
  role    = null
  topic   = null
}
