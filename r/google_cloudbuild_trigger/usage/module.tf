module "google_cloudbuild_trigger" {
  source = "./modules/google/r/google_cloudbuild_trigger"

  description    = null
  disabled       = null
  filename       = null
  ignored_files  = []
  included_files = []
  name           = null
  project        = null
  substitutions  = {}

  build = [{
    images = []
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
    tags    = []
    timeout = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]

  trigger_template = [{
    branch_name = null
    commit_sha  = null
    dir         = null
    project_id  = null
    repo_name   = null
    tag_name    = null
  }]
}
