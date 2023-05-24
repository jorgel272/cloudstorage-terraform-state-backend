provider "google" {
  region      = var.gcp_region
  credentials = var.gcp_service_credentials
  project     = var.gcp_project_id
}

provider "google-beta" {
  region      = var.gcp_region
  credentials = var.gcp_service_credentials
  project     = var.gcp_project_id
}