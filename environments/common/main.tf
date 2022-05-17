# Create project for the first time.
variable "project_id" {
  description = "The project ID to host the cluster in"
  default     = "sanan-dev"
}

variable "org_id" {
  description = "The organization ID of project"
  default     = "1045437797549"
}

resource "google_project" "sanan-dev" {
  name        = var.project_id
  project_id  = var.project_id
  org_id      = var.org_id
  skip_delete = true
}

# Create bucket for saving terraform states
resource "google_storage_bucket" "default" {
  name          = "${var.project_id}-bucket-tfstate"
  project       = var.project_id
  force_destroy = false
  location      = "EU"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}