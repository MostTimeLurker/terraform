terraform {
  required_providers {
    sonarqube = {
      source = "jdamata/sonarqube"
    }
  }
}

provider "sonarqube" {
  token = "squ_ebcc0ce21a8bfc7d4c77191276442bd7573b11a3"
  host  = "http://127.0.0.1:9000"
}
