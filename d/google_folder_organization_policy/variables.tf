variable "constraint" {
  description = "(required) - The name of the Constraint the Policy is configuring, for example, serviceuser.services."
  type        = string
}

variable "folder" {
  description = "(required) - The resource name of the folder to set the policy for. Its format is folders/{folder_id}."
  type        = string
}

