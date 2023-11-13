terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.32.0"
    }
  }
}

provider "digitalocean" {
  token = var.token
}
