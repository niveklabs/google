module "google_container_analysis_occurrence" {
  source = "./modules/google/r/google_container_analysis_occurrence"

  # note_name - (required) is a type of string
  note_name = null
  # project - (optional) is a type of string
  project = null
  # remediation - (optional) is a type of string
  remediation = null
  # resource_uri - (required) is a type of string
  resource_uri = null

  attestation = [{
    serialized_payload = null
    signatures = [{
      public_key_id = null
      signature     = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
