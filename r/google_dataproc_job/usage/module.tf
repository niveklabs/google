module "google_dataproc_job" {
  source = "./modules/google/r/google_dataproc_job"

  # force_delete - (optional) is a type of bool
  force_delete = null
  # labels - (optional) is a type of map of string
  labels = {}
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null

  hadoop_config = [{
    archive_uris  = []
    args          = []
    file_uris     = []
    jar_file_uris = []
    logging_config = [{
      driver_log_levels = {}
    }]
    main_class        = null
    main_jar_file_uri = null
    properties        = {}
  }]

  hive_config = [{
    continue_on_failure = null
    jar_file_uris       = []
    properties          = {}
    query_file_uri      = null
    query_list          = []
    script_variables    = {}
  }]

  pig_config = [{
    continue_on_failure = null
    jar_file_uris       = []
    logging_config = [{
      driver_log_levels = {}
    }]
    properties       = {}
    query_file_uri   = null
    query_list       = []
    script_variables = {}
  }]

  placement = [{
    cluster_name = null
    cluster_uuid = null
  }]

  pyspark_config = [{
    archive_uris  = []
    args          = []
    file_uris     = []
    jar_file_uris = []
    logging_config = [{
      driver_log_levels = {}
    }]
    main_python_file_uri = null
    properties           = {}
    python_file_uris     = []
  }]

  reference = [{
    job_id = null
  }]

  scheduling = [{
    max_failures_per_hour = null
  }]

  spark_config = [{
    archive_uris  = []
    args          = []
    file_uris     = []
    jar_file_uris = []
    logging_config = [{
      driver_log_levels = {}
    }]
    main_class        = null
    main_jar_file_uri = null
    properties        = {}
  }]

  sparksql_config = [{
    jar_file_uris = []
    logging_config = [{
      driver_log_levels = {}
    }]
    properties       = {}
    query_file_uri   = null
    query_list       = []
    script_variables = {}
  }]

  timeouts = [{
    create = null
    delete = null
  }]
}
