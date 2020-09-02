module "google_container_analysis_note" {
  source = "./modules/google/r/google_container_analysis_note"

  # expiration_time - (optional) is a type of string
  expiration_time = null
  # long_description - (optional) is a type of string
  long_description = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # related_note_names - (optional) is a type of set of string
  related_note_names = []
  # short_description - (optional) is a type of string
  short_description = null

  attestation_authority = [{
    hint = [{
      human_readable_name = null
    }]
  }]

  related_url = [{
    label = null
    url   = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
