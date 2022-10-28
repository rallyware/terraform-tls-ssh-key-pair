terraform {
  required_version = ">= 1.3"

  required_providers {
    tls = {
      source  = "hashicorp/tls"
      version = ">= 3"
    }

    local = {
      source  = "hashicorp/local"
      version = ">= 2"
    }
  }
}
