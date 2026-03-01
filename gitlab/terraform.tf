terraform {
  required_providers {
    gitlab = {
      source = "gitlabhq/gitlab"
      version = "18.9.0"
    }
  }
}

# https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs
provider "gitlab" {
  token = "squ_ebcc0ce21a8bfc7d4c77191276442bd7573b11a3"
  base_url = "https://gitlab/api/v4/"
  ca_certfile = "/etc/ssl/certs/ca-certificates.crt"
}