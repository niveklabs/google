module "google_app_engine_standard_app_version" {
  source = "./google/r/google_app_engine_standard_app_version"

  delete_service_on_destroy = null
  env_variables             = {}
  instance_class            = null
  noop_on_destroy           = null
  project                   = null
  runtime                   = null
  runtime_api_version       = null
  service                   = null
  threadsafe                = null
  version_id                = null

  deployment = [{
    files = [{
      name       = null
      sha1_sum   = null
      source_url = null
    }]
    zip = [{
      files_count = null
      source_url  = null
    }]
  }]

  entrypoint = [{
    shell = null
  }]

  handlers = [{
    auth_fail_action            = null
    login                       = null
    redirect_http_response_code = null
    script = [{
      script_path = null
    }]
    security_level = null
    static_files = [{
      application_readable  = null
      expiration            = null
      http_headers          = {}
      mime_type             = null
      path                  = null
      require_matching_file = null
      upload_path_regex     = null
    }]
    url_regex = null
  }]

  libraries = [{
    name    = null
    version = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
