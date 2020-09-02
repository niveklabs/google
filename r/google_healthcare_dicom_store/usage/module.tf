module "google_healthcare_dicom_store" {
  source = "./modules/google/r/google_healthcare_dicom_store"

  # dataset - (required) is a type of string
  dataset = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null

  notification_config = [{
    pubsub_topic = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
