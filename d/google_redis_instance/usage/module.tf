module "google_redis_instance" {
  source = "./modules/google/d/google_redis_instance"

  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
}
