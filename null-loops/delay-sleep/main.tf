terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

// if no customizations are present
// the provider block is optional
provider "null" {
  # Configuration options
}

resource "null_resource" "next" {
  depends_on = [time_sleep.wait_30_seconds]
}

#resource "null_resource" "previous" {
#  provisioner "local-exec" {
#    command = "echo 'foo' > file.txt"
#  }
#}

resource "null_resource" "previous" {
  provisioner "local-exec" {
    command = "echo 'dl' > file.txt"
  }
}

resource "time_sleep" "wait_30_seconds" {
  depends_on       = [null_resource.previous]
  create_duration  = "20s" // pause this long when a creation occurs
  destroy_duration = "10s" // pause this long when a destroy occurs
}


