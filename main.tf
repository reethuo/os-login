provider "google" {
  project = "ritu-pro"
  zone    = "us-central1-b"
}

resource "google_compute_instance" "name" {
  name         = "os-login-instance"
  machine_type = "e2-micro"
  zone         = "us-central1-b"

  boot_disk {
    initialize_params {
      image = "centos-stream-9"
    }
  }


  network_interface {
    network = "default"
    access_config {}
  }
  metadata = {
  enable-oslogin = "TRUE"
}

}
