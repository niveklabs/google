variable "display_name" {
  description = "(optional) - An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - Configuration fields that define the channel and its behavior. The\npermissible and required labels are specified in the\nNotificationChannelDescriptor corresponding to the type field.\n\n**Note**: Some NotificationChannelDescriptor labels are\nsensitive and the API will return an partially-obfuscated value.\nFor example, for '\"type\": \"slack\"' channels, an 'auth_token'\nlabel with value \"SECRET\" will be obfuscated as \"**CRET\". In order\nto avoid a diff, Terraform will use the state value if it appears\nthat the obfuscated value matches the state value in\nlength/unobfuscated characters. However, Terraform will not detect a\ndiff if the obfuscated portion of the value was changed outside of\nTerraform."
  type        = map(string)
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "type" {
  description = "(optional) - The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as \"email\", \"slack\", etc..."
  type        = string
  default     = null
}

variable "user_labels" {
  description = "(optional) - User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter."
  type        = map(string)
  default     = null
}

