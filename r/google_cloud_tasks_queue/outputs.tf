output "id" {
  description = "returns a string"
  value       = google_cloud_tasks_queue.this.id
}

output "project" {
  description = "returns a string"
  value       = google_cloud_tasks_queue.this.project
}

output "this" {
  value = google_cloud_tasks_queue.this
}

