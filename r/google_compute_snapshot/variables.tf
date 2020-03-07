variable "description" {
  description = "(optional) - An optional description of this resource."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - Labels to apply to this Snapshot."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - Name of the resource; provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "source_disk" {
  description = "(required) - A reference to the disk used to create this snapshot."
  type        = string
}

variable "zone" {
  description = "(optional) - A reference to the zone where the disk is hosted."
  type        = string
  default     = null
}

variable "snapshot_encryption_key" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      raw_key = string
      sha256  = string
    }
  ))
  default = []
}

variable "source_disk_encryption_key" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      raw_key = string
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

