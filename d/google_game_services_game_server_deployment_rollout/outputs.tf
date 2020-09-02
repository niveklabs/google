output "default_game_server_config" {
  description = "returns a string"
  value       = data.google_game_services_game_server_deployment_rollout.this.default_game_server_config
}

output "game_server_config_overrides" {
  description = "returns a list of object"
  value       = data.google_game_services_game_server_deployment_rollout.this.game_server_config_overrides
}

output "id" {
  description = "returns a string"
  value       = data.google_game_services_game_server_deployment_rollout.this.id
}

output "name" {
  description = "returns a string"
  value       = data.google_game_services_game_server_deployment_rollout.this.name
}

output "project" {
  description = "returns a string"
  value       = data.google_game_services_game_server_deployment_rollout.this.project
}

output "this" {
  value = google_game_services_game_server_deployment_rollout.this
}

