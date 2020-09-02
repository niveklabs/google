terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_compute_health_check" "this" {
  check_interval_sec  = var.check_interval_sec
  description         = var.description
  healthy_threshold   = var.healthy_threshold
  name                = var.name
  project             = var.project
  timeout_sec         = var.timeout_sec
  unhealthy_threshold = var.unhealthy_threshold

  dynamic "http2_health_check" {
    for_each = var.http2_health_check
    content {
      host               = http2_health_check.value["host"]
      port               = http2_health_check.value["port"]
      port_name          = http2_health_check.value["port_name"]
      port_specification = http2_health_check.value["port_specification"]
      proxy_header       = http2_health_check.value["proxy_header"]
      request_path       = http2_health_check.value["request_path"]
      response           = http2_health_check.value["response"]
    }
  }

  dynamic "http_health_check" {
    for_each = var.http_health_check
    content {
      host               = http_health_check.value["host"]
      port               = http_health_check.value["port"]
      port_name          = http_health_check.value["port_name"]
      port_specification = http_health_check.value["port_specification"]
      proxy_header       = http_health_check.value["proxy_header"]
      request_path       = http_health_check.value["request_path"]
      response           = http_health_check.value["response"]
    }
  }

  dynamic "https_health_check" {
    for_each = var.https_health_check
    content {
      host               = https_health_check.value["host"]
      port               = https_health_check.value["port"]
      port_name          = https_health_check.value["port_name"]
      port_specification = https_health_check.value["port_specification"]
      proxy_header       = https_health_check.value["proxy_header"]
      request_path       = https_health_check.value["request_path"]
      response           = https_health_check.value["response"]
    }
  }

  dynamic "ssl_health_check" {
    for_each = var.ssl_health_check
    content {
      port               = ssl_health_check.value["port"]
      port_name          = ssl_health_check.value["port_name"]
      port_specification = ssl_health_check.value["port_specification"]
      proxy_header       = ssl_health_check.value["proxy_header"]
      request            = ssl_health_check.value["request"]
      response           = ssl_health_check.value["response"]
    }
  }

  dynamic "tcp_health_check" {
    for_each = var.tcp_health_check
    content {
      port               = tcp_health_check.value["port"]
      port_name          = tcp_health_check.value["port_name"]
      port_specification = tcp_health_check.value["port_specification"]
      proxy_header       = tcp_health_check.value["proxy_header"]
      request            = tcp_health_check.value["request"]
      response           = tcp_health_check.value["response"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

