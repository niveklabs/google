output "id" {
  description = "returns a string"
  value       = google_dataproc_cluster.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = google_dataproc_cluster.this.labels
}

output "project" {
  description = "returns a string"
  value       = google_dataproc_cluster.this.project
}

output "this" {
  value = google_dataproc_cluster.this
}

