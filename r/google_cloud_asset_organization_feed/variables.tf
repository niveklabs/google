variable "asset_names" {
  description = "(optional) - A list of the full names of the assets to receive updates. You must specify either or both of \nassetNames and assetTypes. Only asset updates matching specified assetNames and assetTypes are\nexported to the feed. For example: //compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1.\nSee https://cloud.google.com/apis/design/resourceNames#fullResourceName for more info."
  type        = list(string)
  default     = null
}

variable "asset_types" {
  description = "(optional) - A list of types of the assets to receive updates. You must specify either or both of assetNames\nand assetTypes. Only asset updates matching specified assetNames and assetTypes are exported to\nthe feed. For example: \"compute.googleapis.com/Disk\"\nSee https://cloud.google.com/asset-inventory/docs/supported-asset-types for a list of all\nsupported asset types."
  type        = list(string)
  default     = null
}

variable "billing_project" {
  description = "(required) - The project whose identity will be used when sending messages to the\ndestination pubsub topic. It also specifies the project for API \nenablement check, quota, and billing."
  type        = string
}

variable "content_type" {
  description = "(optional) - Asset content type. If not specified, no content but the asset name and type will be returned. Possible values: [\"CONTENT_TYPE_UNSPECIFIED\", \"RESOURCE\", \"IAM_POLICY\", \"ORG_POLICY\", \"ACCESS_POLICY\"]"
  type        = string
  default     = null
}

variable "feed_id" {
  description = "(required) - This is the client-assigned asset feed identifier and it needs to be unique under a specific parent."
  type        = string
}

variable "org_id" {
  description = "(required) - The organization this feed should be created in."
  type        = string
}

variable "feed_output_config" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      pubsub_destination = list(object(
        {
          topic = string
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

