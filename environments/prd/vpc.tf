# VPC
resource "google_compute_network" "vpc" {
  name                    = "${var.project_id}-${var.member_id}-prd-vpc"
  auto_create_subnetworks = "false"
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.project_id}-${var.member_id}-prd-subnet"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = var.subnet_cidr
}