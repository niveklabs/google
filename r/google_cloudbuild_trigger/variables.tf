variable "description" {
  description = "(optional) - Human-readable description of the trigger."
  type        = string
  default     = null
}

variable "disabled" {
  description = "(optional) - Whether the trigger is disabled or not. If true, the trigger will never result in a build."
  type        = bool
  default     = null
}

variable "filename" {
  description = "(optional) - Path, from the source root, to a file whose contents is used for the template. Either a filename or build template must be provided."
  type        = string
  default     = null
}

variable "ignored_files" {
  description = "(optional) - ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match\nextended with support for '**'.\n\nIf ignoredFiles and changed files are both empty, then they are not\nused to determine whether or not to trigger a build.\n\nIf ignoredFiles is not empty, then we ignore any files that match any\nof the ignored_file globs. If the change has no files that are outside\nof the ignoredFiles globs, then we do not trigger a build."
  type        = list(string)
  default     = null
}

variable "included_files" {
  description = "(optional) - ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match\nextended with support for '**'.\n\nIf any of the files altered in the commit pass the ignoredFiles filter\nand includedFiles is empty, then as far as this filter is concerned, we\nshould trigger the build.\n\nIf any of the files altered in the commit pass the ignoredFiles filter\nand includedFiles is not empty, then we make sure that at least one of\nthose files matches a includedFiles glob. If not, then we do not trigger\na build."
  type        = list(string)
  default     = null
}

variable "name" {
  description = "(optional) - Name of the trigger. Must be unique within the project."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "substitutions" {
  description = "(optional) - Substitutions data for Build resource."
  type        = map(string)
  default     = null
}

variable "tags" {
  description = "(optional) - Tags for annotation of a BuildTrigger"
  type        = list(string)
  default     = null
}

variable "build" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      images      = list(string)
      logs_bucket = string
      queue_ttl   = string
      secret = list(object(
        {
          kms_key_name = string
          secret_env   = map(string)
        }
      ))
      source = list(object(
        {
          repo_source = list(object(
            {
              branch_name   = string
              commit_sha    = string
              dir           = string
              invert_regex  = bool
              project_id    = string
              repo_name     = string
              substitutions = map(string)
              tag_name      = string
            }
          ))
          storage_source = list(object(
            {
              bucket     = string
              generation = string
              object     = string
            }
          ))
        }
      ))
      step = list(object(
        {
          args       = list(string)
          dir        = string
          entrypoint = string
          env        = list(string)
          id         = string
          name       = string
          secret_env = list(string)
          timeout    = string
          timing     = string
          volumes = list(object(
            {
              name = string
              path = string
            }
          ))
          wait_for = list(string)
        }
      ))
      substitutions = map(string)
      tags          = list(string)
      timeout       = string
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

variable "trigger_template" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      branch_name  = string
      commit_sha   = string
      dir          = string
      invert_regex = bool
      project_id   = string
      repo_name    = string
      tag_name     = string
    }
  ))
  default = []
}

