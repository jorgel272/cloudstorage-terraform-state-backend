###############################################################################
# General Google project variables
###############################################################################

variable "gcp_project_id" {
  type    = string
  default = "NAME_OF_YOUR_GCP_PROJECT"
}

variable "gcp_region" {
  description = "Default region for google provider"
  default     = "europe-west4"
  type        = string
}

variable "gcp_service_credentials" {
  description = "Reference to the service account key file"
  default     = "path/to/your/service-account-key.json"
  type        = string
}

variable "gcp_zone_primary" {
  description = "GCP Primary region, zone in region Europe West-4 NL"
  default     = "europe-west4-c"
  type        = string
}
