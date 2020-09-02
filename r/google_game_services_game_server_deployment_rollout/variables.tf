variable "default_game_server_config" {
  description = "(required) - This field points to the game server config that is\napplied by default to all realms and clusters. For example,\n\n'projects/my-project/locations/global/gameServerDeployments/my-game/configs/my-config'."
  type        = string
}

variable "deployment_id" {
  description = "(required) - The deployment to rollout the new config to. Only 1 rollout must be associated with each deployment."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "game_server_config_overrides" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      config_version = string
      realms_selector = list(object(
        {
          realms = list(string)
        }
      ))
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

