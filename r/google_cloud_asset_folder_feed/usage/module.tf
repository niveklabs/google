module "google_cloud_asset_folder_feed" {
  source = "./modules/google/r/google_cloud_asset_folder_feed"

  # asset_names - (optional) is a type of list of string
  asset_names = []
  # asset_types - (optional) is a type of list of string
  asset_types = []
  # billing_project - (required) is a type of string
  billing_project = null
  # content_type - (optional) is a type of string
  content_type = null
  # feed_id - (required) is a type of string
  feed_id = null
  # folder - (required) is a type of string
  folder = null

  feed_output_config = [{
    pubsub_destination = [{
      topic = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
