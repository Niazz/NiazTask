terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
    }
  }

}
# The configuration for the `remote` backend.
terraform {
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "niazOrg"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "niaz"
    }
  }
}

