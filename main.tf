#------------------------------------------------------------------------------
# Create Google Cloud Storage bucket to store Terraform state file v.1.0.0
#------------------------------------------------------------------------------

###############################################################################
# Create new multi-region storage bucket in the EU with versioning enabled
###############################################################################

resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "tf-state-storage" {
  name          = "${random_id.bucket_prefix.hex}-bucket-tfstate"
  force_destroy = false
  location      = "EU"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}