

provider "google" {
  project     =  var.project_id
  region      = "us-central1"
}

resource "google_cloud_run_service" "default" {
  name     = var.name
  location = "us-central1"

  template {
    spec {
      containers {
        image = "gcr.io/cloudrun/hello"
      }
    }
  }
}