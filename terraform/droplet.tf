resource "digitalocean_ssh_key" "deis-ssh-key" {
    name = "deis ssh key"
    public_key = "${file("${var.PUBLIC_SSH_KEY}")}"
}
resource "digitalocean_droplet" "deis-demo-1" {
    image = "coreos-beta"
    name = "deis-demo-1"
    region = "ams3"
    size = "1gb"
    private_networking = "true"
    ssh_keys = ["${digitalocean_ssh_key.deis-ssh-key.id}"]
}
resource "digitalocean_droplet" "deis-demo-2" {
    image = "coreos-beta"
    name = "deis-demo-2"
    region = "ams3"
    size = "1gb"
    private_networking = "true"
    ssh_keys = ["${digitalocean_ssh_key.deis-ssh-key.id}"]
}
resource "digitalocean_droplet" "deis-demo-3" {
    image = "coreos-beta"
    name = "deis-demo-3"
    region = "ams3"
    size = "1gb"
    private_networking = "true"
    ssh_keys = ["${digitalocean_ssh_key.deis-ssh-key.id}"]
}
output "output-deis-demo-1" {
  value = "${digitalocean_droplet.deis-demo-1.ipv4_address} - ${digitalocean_droplet.deis-demo-1.ipv4_address_private}"
}
output "output-deis-demo-2" {
  value = "${digitalocean_droplet.deis-demo-2.ipv4_address} - ${digitalocean_droplet.deis-demo-2.ipv4_address_private}"
}
output "output-deis-demo-3" {
  value = "${digitalocean_droplet.deis-demo-3.ipv4_address} - ${digitalocean_droplet.deis-demo-3.ipv4_address_private}"
}
