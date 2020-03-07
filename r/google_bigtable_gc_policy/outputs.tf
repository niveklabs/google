output "id" {
  description = "returns a string"
  value       = google_bigtable_gc_policy.this.id
}

output "project" {
  description = "returns a string"
  value       = google_bigtable_gc_policy.this.project
}

output "this" {
  value = google_bigtable_gc_policy.this
}

