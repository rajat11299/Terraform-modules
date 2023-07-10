terraform {
/*
  cloud {
   organization = "organization-name"

   workspaces {
     name = "learn-terraform-cloud"
   }
  }
*/

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.72.0"
    }
  }

  required_version = ">= 0.14.0"
}