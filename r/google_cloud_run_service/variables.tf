variable "autogenerate_revision_name" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "location" {
  description = "(required) - The location of the cloud run instance. eg us-central1"
  type        = string
}

variable "name" {
  description = "(required) - Name must be unique within a namespace, within a Cloud Run region.\nIs required when creating resources. Name is primarily intended\nfor creation idempotence and configuration definition. Cannot be updated.\nMore info: http://kubernetes.io/docs/user-guide/identifiers#names"
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "metadata" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      annotations      = map(string)
      generation       = number
      labels           = map(string)
      namespace        = string
      resource_version = string
      self_link        = string
      uid              = string
    }
  ))
  default = []
}

variable "template" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      metadata = list(object(
        {
          annotations      = map(string)
          generation       = number
          labels           = map(string)
          name             = string
          namespace        = string
          resource_version = string
          self_link        = string
          uid              = string
        }
      ))
      spec = list(object(
        {
          container_concurrency = number
          containers = list(object(
            {
              args    = list(string)
              command = list(string)
              env = list(object(
                {
                  name  = string
                  value = string
                }
              ))
              env_from = list(object(
                {
                  config_map_ref = list(object(
                    {
                      local_object_reference = list(object(
                        {
                          name = string
                        }
                      ))
                      optional = bool
                    }
                  ))
                  prefix = string
                  secret_ref = list(object(
                    {
                      local_object_reference = list(object(
                        {
                          name = string
                        }
                      ))
                      optional = bool
                    }
                  ))
                }
              ))
              image = string
              resources = list(object(
                {
                  limits   = map(string)
                  requests = map(string)
                }
              ))
              working_dir = string
            }
          ))
          service_account_name = string
          serving_state        = string
        }
      ))
    }
  ))
  default = []
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      update = string
    }
  ))
  default = []
}

variable "traffic" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      latest_revision = bool
      percent         = number
      revision_name   = string
    }
  ))
  default = []
}

