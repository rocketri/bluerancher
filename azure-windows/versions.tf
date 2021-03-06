terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.33.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.0.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.0.0"
    }
  }
  required_version = ">= 0.13"
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "rocketlab"

    workspaces {
      name = "BlueRancher-Quickstart"
    }
  }
}
#This remote "backend" references the Terraform Cloud workspace and organization. 
#You can replace these values reflecting your own environment