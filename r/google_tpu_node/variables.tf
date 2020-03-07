variable "accelerator_type" {
  description = "(required) - The type of hardware accelerators associated with this node."
  type        = string
}

variable "cidr_block" {
  description = "(required) - The CIDR block that the TPU node will use when selecting an IP\naddress. This CIDR block must be a /29 block; the Compute Engine\nnetworks API forbids a smaller block, and using a larger block would\nbe wasteful (a node can only consume one IP address).\n\nErrors will occur if the CIDR block has already been used for a\ncurrently existing TPU node, the CIDR block conflicts with any\nsubnetworks in the user's provided network, or the provided network\nis peered with another network that is using that CIDR block."
  type        = string
}

variable "description" {
  description = "(optional) - The user-supplied description of the TPU. Maximum of 512 characters."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - Resource labels to represent user provided metadata."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - The immutable name of the TPU."
  type        = string
}

variable "network" {
  description = "(optional) - The name of a network to peer the TPU node to. It must be a\npreexisting Compute Engine network inside of the project on which\nthis API has been activated. If none is provided, \"default\" will be\nused."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "tensorflow_version" {
  description = "(required) - The version of Tensorflow running in the Node."
  type        = string
}

variable "zone" {
  description = "(required) - The GCP location for the TPU."
  type        = string
}

variable "scheduling_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      preemptible = bool
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

