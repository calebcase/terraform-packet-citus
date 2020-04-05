terraform {
  required_version = ">= 0.12"

  required_providers {
    template = {
      version = "~> 2.1"
    }

    packet = {
      version = "~> 2.8"
    }
  }
}

data "packet_project" "citus" {
  name = var.project_name
}
