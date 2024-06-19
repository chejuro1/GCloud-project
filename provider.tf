provider "google" {
  project = "azure"
  region  = "northamerica-northeast2"
#   credentials = 
}



terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
    #   version = "~> 1.0"
      configuration_aliases = [ google.alternate ]
    }
  }
}
