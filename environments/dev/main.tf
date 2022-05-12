resource "google_project" "landing-zone-dev" {
  name       = "landing-zone-dev"
  project_id = "landing-zone-dev"
  org_id     = "1045437797549"
}

provider "google" {
  project = google_project.landing-zone-dev.id
  region  = var.region
}