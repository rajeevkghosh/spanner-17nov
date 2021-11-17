provider "google" {

#credentials = file("../key.json")
access_token = var.access_token

}

resource "google_spanner_instance" "example" {
  config       = "nam-eur-asia1"
  display_name = "Multi Regional Instance"
  num_nodes    = 2
  labels = {
    "foo" = "bar"
  }
}
