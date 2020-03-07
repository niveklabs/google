output "cidr_blocks" {
  description = "returns a list of string"
  value       = data.google_netblock_ip_ranges.this.cidr_blocks
}

output "cidr_blocks_ipv4" {
  description = "returns a list of string"
  value       = data.google_netblock_ip_ranges.this.cidr_blocks_ipv4
}

output "cidr_blocks_ipv6" {
  description = "returns a list of string"
  value       = data.google_netblock_ip_ranges.this.cidr_blocks_ipv6
}

output "id" {
  description = "returns a string"
  value       = data.google_netblock_ip_ranges.this.id
}

output "this" {
  value = google_netblock_ip_ranges.this
}

