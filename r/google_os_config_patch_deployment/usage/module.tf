module "google_os_config_patch_deployment" {
  source = "./modules/google/r/google_os_config_patch_deployment"

  # description - (optional) is a type of string
  description = null
  # duration - (optional) is a type of string
  duration = null
  # patch_deployment_id - (required) is a type of string
  patch_deployment_id = null
  # project - (optional) is a type of string
  project = null

  instance_filter = [{
    all = null
    group_labels = [{
      labels = {}
    }]
    instance_name_prefixes = []
    instances              = []
    zones                  = []
  }]

  one_time_schedule = [{
    execute_time = null
  }]

  patch_config = [{
    apt = [{
      excludes           = []
      exclusive_packages = []
      type               = null
    }]
    goo = [{
      enabled = null
    }]
    post_step = [{
      linux_exec_step_config = [{
        allowed_success_codes = []
        gcs_object = [{
          bucket            = null
          generation_number = null
          object            = null
        }]
        interpreter = null
        local_path  = null
      }]
      windows_exec_step_config = [{
        allowed_success_codes = []
        gcs_object = [{
          bucket            = null
          generation_number = null
          object            = null
        }]
        interpreter = null
        local_path  = null
      }]
    }]
    pre_step = [{
      linux_exec_step_config = [{
        allowed_success_codes = []
        gcs_object = [{
          bucket            = null
          generation_number = null
          object            = null
        }]
        interpreter = null
        local_path  = null
      }]
      windows_exec_step_config = [{
        allowed_success_codes = []
        gcs_object = [{
          bucket            = null
          generation_number = null
          object            = null
        }]
        interpreter = null
        local_path  = null
      }]
    }]
    reboot_config = null
    windows_update = [{
      classifications   = null
      excludes          = []
      exclusive_patches = []
    }]
    yum = [{
      excludes           = []
      exclusive_packages = []
      minimal            = null
      security           = null
    }]
    zypper = [{
      categories        = []
      excludes          = []
      exclusive_patches = []
      severities        = []
      with_optional     = null
      with_update       = null
    }]
  }]

  recurring_schedule = [{
    end_time          = null
    last_execute_time = null
    monthly = [{
      month_day = null
      week_day_of_month = [{
        day_of_week  = null
        week_ordinal = null
      }]
    }]
    next_execute_time = null
    start_time        = null
    time_of_day = [{
      hours   = null
      minutes = null
      nanos   = null
      seconds = null
    }]
    time_zone = [{
      id      = null
      version = null
    }]
    weekly = [{
      day_of_week = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
  }]
}
