terraform {
  backend "remote" {
    organization = "ajschenck-hc"    
    workspaces {
      name = "learn-terraform-pipelines-k8s"
    }
  }
required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.55"
    }
}

required_version = "~> 0.14"
}



provider "google" {
  project = var.google_project
  region  = var.region
}
