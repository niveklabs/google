variable "description" {
  description = "(optional) - An optional description of this resource. Provide this property when\nyou create the resource."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - Labels to apply to this disk.  A list of key->value pairs."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash."
  type        = string
}

variable "physical_block_size_bytes" {
  description = "(optional) - Physical block size of the persistent disk, in bytes. If not present\nin a request, a default value is used. Currently supported sizes\nare 4096 and 16384, other sizes may be added in the future.\nIf an unsupported value is requested, the error message will list\nthe supported values for the caller's project."
  type        = number
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - A reference to the region where the disk resides."
  type        = string
  default     = null
}

variable "replica_zones" {
  description = "(required) - URLs of the zones where the disk should be replicated to."
  type        = list(string)
}

variable "size" {
  description = "(optional) - Size of the persistent disk, specified in GB. You can specify this\nfield when creating a persistent disk using the sourceImage or\nsourceSnapshot parameter, or specify it alone to create an empty\npersistent disk.\n\nIf you specify this field along with sourceImage or sourceSnapshot,\nthe value of sizeGb must not be less than the size of the sourceImage\nor the size of the snapshot."
  type        = number
  default     = null
}

variable "snapshot" {
  description = "(optional) - The source snapshot used to create this disk. You can provide this as\na partial or full URL to the resource. For example, the following are\nvalid values:\n\n* 'https://www.googleapis.com/compute/v1/projects/project/global/snapshots/snapshot'\n* 'projects/project/global/snapshots/snapshot'\n* 'global/snapshots/snapshot'\n* 'snapshot'"
  type        = string
  default     = null
}

variable "type" {
  description = "(optional) - URL of the disk type resource describing which disk type to use to\ncreate the disk. Provide this when creating the disk."
  type        = string
  default     = null
}

variable "disk_encryption_key" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      raw_key = string
      sha256  = string
    }
  ))
  default = []
}

variable "source_snapshot_encryption_key" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      raw_key = string
      sha256  = string
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

