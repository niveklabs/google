output "id" {
  description = "returns a string"
  value       = google_sourcerepo_repository.this.id
}

output "project" {
  description = "returns a string"
  value       = google_sourcerepo_repository.this.project
}

output "size" {
  description = "returns a number"
  value       = google_sourcerepo_repository.this.size
}

output "url" {
  description = "returns a string"
  value       = google_sourcerepo_repository.this.url
}

output "this" {
  value = google_sourcerepo_repository.this
}

