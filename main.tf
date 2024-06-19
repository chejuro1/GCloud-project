terraform {
  backend "gcs" {
    bucket  = "mystatefile"
    prefix  = "terraform/state"
  }
}
provider "google" {
  credentials = file(var.credentials_file_path)
  project     = var.project_id
  region      = var.region
}

resource "google_compute_instance" "default" {
  name         = "terraform-instance"
  machine_type = "f1-micro"
  zone         = "northamerica-northeast2-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}

variable "credentials_file_path" {
  description = "Path to the Google Cloud credentials file"
}

variable "project_id" {
  description = "project description in google"
}

variable "region" {
  description = "Google Cloud region"
}
