resource "digitalocean_ssh_key" "my_key" {
  name       = "dig_oc_key_1"
  public_key = var.my_key
}

resource "digitalocean_droplet" "do_devops" {
  name   = "digital-ocean-terraform"
  tags	 = ["devops","ringhton555_at_gmail_com"]
  size   = "s-1vcpu-1gb"
  image  = "ubuntu-22-04-x64"
  region = "fra1"
  ssh_keys = [digitalocean_ssh_key.my_key.fingerprint,data.digitalocean_ssh_key.rebrain_key.fingerprint]
}
