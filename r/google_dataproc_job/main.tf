terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

resource "google_dataproc_job" "this" {
  force_delete = var.force_delete
  labels       = var.labels
  project      = var.project
  region       = var.region

  dynamic "hadoop_config" {
    for_each = var.hadoop_config
    content {
      archive_uris      = hadoop_config.value["archive_uris"]
      args              = hadoop_config.value["args"]
      file_uris         = hadoop_config.value["file_uris"]
      jar_file_uris     = hadoop_config.value["jar_file_uris"]
      main_class        = hadoop_config.value["main_class"]
      main_jar_file_uri = hadoop_config.value["main_jar_file_uri"]
      properties        = hadoop_config.value["properties"]

      dynamic "logging_config" {
        for_each = hadoop_config.value.logging_config
        content {
          driver_log_levels = logging_config.value["driver_log_levels"]
        }
      }

    }
  }

  dynamic "hive_config" {
    for_each = var.hive_config
    content {
      continue_on_failure = hive_config.value["continue_on_failure"]
      jar_file_uris       = hive_config.value["jar_file_uris"]
      properties          = hive_config.value["properties"]
      query_file_uri      = hive_config.value["query_file_uri"]
      query_list          = hive_config.value["query_list"]
      script_variables    = hive_config.value["script_variables"]
    }
  }

  dynamic "pig_config" {
    for_each = var.pig_config
    content {
      continue_on_failure = pig_config.value["continue_on_failure"]
      jar_file_uris       = pig_config.value["jar_file_uris"]
      properties          = pig_config.value["properties"]
      query_file_uri      = pig_config.value["query_file_uri"]
      query_list          = pig_config.value["query_list"]
      script_variables    = pig_config.value["script_variables"]

      dynamic "logging_config" {
        for_each = pig_config.value.logging_config
        content {
          driver_log_levels = logging_config.value["driver_log_levels"]
        }
      }

    }
  }

  dynamic "placement" {
    for_each = var.placement
    content {
      cluster_name = placement.value["cluster_name"]
    }
  }

  dynamic "pyspark_config" {
    for_each = var.pyspark_config
    content {
      archive_uris         = pyspark_config.value["archive_uris"]
      args                 = pyspark_config.value["args"]
      file_uris            = pyspark_config.value["file_uris"]
      jar_file_uris        = pyspark_config.value["jar_file_uris"]
      main_python_file_uri = pyspark_config.value["main_python_file_uri"]
      properties           = pyspark_config.value["properties"]
      python_file_uris     = pyspark_config.value["python_file_uris"]

      dynamic "logging_config" {
        for_each = pyspark_config.value.logging_config
        content {
          driver_log_levels = logging_config.value["driver_log_levels"]
        }
      }

    }
  }

  dynamic "reference" {
    for_each = var.reference
    content {
      job_id = reference.value["job_id"]
    }
  }

  dynamic "scheduling" {
    for_each = var.scheduling
    content {
      max_failures_per_hour = scheduling.value["max_failures_per_hour"]
    }
  }

  dynamic "spark_config" {
    for_each = var.spark_config
    content {
      archive_uris      = spark_config.value["archive_uris"]
      args              = spark_config.value["args"]
      file_uris         = spark_config.value["file_uris"]
      jar_file_uris     = spark_config.value["jar_file_uris"]
      main_class        = spark_config.value["main_class"]
      main_jar_file_uri = spark_config.value["main_jar_file_uri"]
      properties        = spark_config.value["properties"]

      dynamic "logging_config" {
        for_each = spark_config.value.logging_config
        content {
          driver_log_levels = logging_config.value["driver_log_levels"]
        }
      }

    }
  }

  dynamic "sparksql_config" {
    for_each = var.sparksql_config
    content {
      jar_file_uris    = sparksql_config.value["jar_file_uris"]
      properties       = sparksql_config.value["properties"]
      query_file_uri   = sparksql_config.value["query_file_uri"]
      query_list       = sparksql_config.value["query_list"]
      script_variables = sparksql_config.value["script_variables"]

      dynamic "logging_config" {
        for_each = sparksql_config.value.logging_config
        content {
          driver_log_levels = logging_config.value["driver_log_levels"]
        }
      }

    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

