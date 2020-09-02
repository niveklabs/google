variable "create_policy" {
  description = "(optional) - Set the policy to use for creating new resources. Only used on\ncreate and update. Valid values are 'CREATE_OR_ACQUIRE' (default) or\n'ACQUIRE'. If set to 'ACQUIRE' and resources do not already exist,\nthe deployment will fail. Note that updating this field does not\nactually affect the deployment, just how it is updated. Default value: \"CREATE_OR_ACQUIRE\" Possible values: [\"ACQUIRE\", \"CREATE_OR_ACQUIRE\"]"
  type        = string
  default     = null
}

variable "delete_policy" {
  description = "(optional) - Set the policy to use for deleting new resources on update/delete.\nValid values are 'DELETE' (default) or 'ABANDON'. If 'DELETE',\nresource is deleted after removal from Deployment Manager. If\n'ABANDON', the resource is only removed from Deployment Manager\nand is not actually deleted. Note that updating this field does not\nactually change the deployment, just how it is updated. Default value: \"DELETE\" Possible values: [\"ABANDON\", \"DELETE\"]"
  type        = string
  default     = null
}

variable "description" {
  description = "(optional) - Optional user-provided description of deployment."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - Unique name for the deployment"
  type        = string
}

variable "preview" {
  description = "(optional) - If set to true, a deployment is created with \"shell\" resources\nthat are not actually instantiated. This allows you to preview a\ndeployment. It can be updated to false to actually deploy\nwith real resources.\n ~>**NOTE:** Deployment Manager does not allow update\nof a deployment in preview (unless updating to preview=false). Thus,\nTerraform will force-recreate deployments if either preview is updated\nto true or if other fields are updated while preview is true."
  type        = bool
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "labels" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      key   = string
      value = string
    }
  ))
  default = []
}

variable "target" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      config = list(object(
        {
          content = string
        }
      ))
      imports = list(object(
        {
          content = string
          name    = string
        }
      ))
    }
  ))
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

