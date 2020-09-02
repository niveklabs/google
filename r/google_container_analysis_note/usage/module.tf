module "google_container_analysis_note" {
  source = "./modules/google/r/google_container_analysis_note"

  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null

  attestation_authority = [{
    hint = [{
      human_readable_name = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
