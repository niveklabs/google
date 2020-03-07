variable "description" {
  description = "(optional) - An optional description of this resource. Provide this property when\nyou create the resource."
  type        = string
  default     = null
}

variable "disk_size_gb" {
  description = "(optional) - Size of the image when restored onto a persistent disk (in GB)."
  type        = number
  default     = null
}

variable "family" {
  description = "(optional) - The name of the image family to which this image belongs. You can\ncreate disks by specifying an image family instead of a specific\nimage name. The image family always returns its latest image that is\nnot deprecated. The name of the image family must comply with\nRFC1035."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - Labels to apply to this Image."
  type        = map(string)
  default     = null
}

variable "licenses" {
  description = "(optional) - Any applicable license URI."
  type        = list(string)
  default     = null
}

variable "name" {
  description = "(required) - Name of the resource; provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and\nmatch the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the\nlast character, which cannot be a dash."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "source_disk" {
  description = "(optional) - The source disk to create this image based on.\nYou must provide either this property or the\nrawDisk.source property but not both to create an image."
  type        = string
  default     = null
}

variable "guest_os_features" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      type = string
    }
  ))
  default = []
}

variable "raw_disk" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      container_type = string
      sha1           = string
      source         = string
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

