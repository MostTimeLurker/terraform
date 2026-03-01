terraform {
  required_providers {
    gitlab = {
      source = "gitlabhq/gitlab"
      version = "18.9.0"
    }
  }
}

provider "gitlab" {
  token = "squ_ebcc0ce21a8bfc7d4c77191276442bd7573b11a3"
  host  = "http://127.0.0.1:9000"
}