module "google_compute_resource_policy" {
  source = "./modules/google/r/google_compute_resource_policy"

  name    = null
  project = null
  region  = null

  snapshot_schedule_policy = [{
    retention_policy = [{
      max_retention_days    = null
      on_source_disk_delete = null
    }]
    schedule = [{
      daily_schedule = [{
        days_in_cycle = null
        start_time    = null
      }]
      hourly_schedule = [{
        hours_in_cycle = null
        start_time     = null
      }]
      weekly_schedule = [{
        day_of_weeks = [{
          day        = null
          start_time = null
        }]
      }]
    }]
    snapshot_properties = [{
      guest_flush       = null
      labels            = {}
      storage_locations = []
    }]
  }]

  timeouts = [{
    create = null
    delete = null
  }]
}
