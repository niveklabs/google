output "id" {
  description = "returns a string"
  value       = google_firestore_index.this.id
}

output "name" {
  description = "returns a string"
  value       = google_firestore_index.this.name
}

output "project" {
  description = "returns a string"
  value       = google_firestore_index.this.project
}

output "this" {
  value = google_firestore_index.this
}

