module "google_cloudbuild_trigger" {
  source = "./modules/google/r/google_cloudbuild_trigger"

  # description - (optional) is a type of string
  description = null
  # disabled - (optional) is a type of bool
  disabled = null
  # filename - (optional) is a type of string
  filename = null
  # ignored_files - (optional) is a type of list of string
  ignored_files = []
  # included_files - (optional) is a type of list of string
  included_files = []
  # name - (optional) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # substitutions - (optional) is a type of map of string
  substitutions = {}
  # tags - (optional) is a type of list of string
  tags = []

  build = [{
    images      = []
    logs_bucket = null
    queue_ttl   = null
    secret = [{
      kms_key_name = null
      secret_env   = {}
    }]
    source = [{
      repo_source = [{
        branch_name   = null
        commit_sha    = null
        dir           = null
        invert_regex  = null
        project_id    = null
        repo_name     = null
        substitutions = {}
        tag_name      = null
      }]
      storage_source = [{
        bucket     = null
        generation = null
        object     = null
      }]
    }]
    step = [{
      args       = []
      dir        = null
      entrypoint = null
      env        = []
      id         = null
      name       = null
      secret_env = []
      timeout    = null
      timing     = null
      volumes = [{
        name = null
        path = null
      }]
      wait_for = []
    }]
    substitutions = {}
    tags          = []
    timeout       = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]

  trigger_template = [{
    branch_name  = null
    commit_sha   = null
    dir          = null
    invert_regex = null
    project_id   = null
    repo_name    = null
    tag_name     = null
  }]
}
