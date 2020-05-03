module "google_pubsub_topic_iam_binding" {
  source = "./modules/google/r/google_pubsub_topic_iam_binding"

  members = []
  project = null
  role    = null
  topic   = null
}
