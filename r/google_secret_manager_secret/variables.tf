variable "labels" {
  description = "(optional) - The labels assigned to this Secret.\n\nLabel keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,\nand must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}][\\p{Ll}\\p{Lo}\\p{N}_-]{0,62}\n\nLabel values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,\nand must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}\n\nNo more than 64 labels can be assigned to a given resource.\n\nAn object containing a list of \"key\": value pairs. Example:\n{ \"name\": \"wrench\", \"mass\": \"1.3kg\", \"count\": \"3\" }."
  type        = map(string)
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "secret_id" {
  description = "(required) - This must be unique within the project."
  type        = string
}

variable "replication" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      automatic = bool
      user_managed = list(object(
        {
          replicas = list(object(
            {
              location = string
            }
          ))
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

