terraform {
  backend "gcs" {
    bucket = "gh-trunk-based-example"
    prefix = "dev/tfstate"
  }
}

# An example resource that does nothing.
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}
