terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.5"  # Exemplo, ajuste conforme necessário
    }
  }
}



provider "google" {
  credentials = var.gcp_service_account_key_json
  project     = var.gcp_project_id
  region      = var.gcp_region
}

resource "google_container_cluster" "primary" {
  name     = var.gcp_cluster_name
  location = var.gcp_region

  initial_node_count = 1

  node_config {
    machine_type = "e2-medium"
  }
}


provider "kubernetes" {
  host                   = google_container_cluster.primary.endpoint
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(google_container_cluster.primary.master_auth[0].cluster_ca_certificate)
}

data "google_client_config" "default" {}
