terraform {
  backend "gcs" {
    bucket = "1045437797549-bucket-tfstate"
    prefix = "terraform/state"
  }
}