resource "sonarqube_group" "demoproject_reader" {
  name        = "DemoProject_Reader"
  description = "Reader Access"
}

resource "sonarqube_group" "demoproject_reviewer" {
  name        = "DemoProject_Reviewer"
  description = "Reviewer Acess"
}

resource "sonarqube_group" "demoproject_admin" {
  name        = "DemoProject_Admin"
}

resource "sonarqube_permission_template" "demoproject" {
  name                = "DemoProject"
  description         = "This one demonstrates something"
  project_key_pattern = "^demo-.*"
}

resource "sonarqube_permissions" "demoproject_reader" {
  group_name  = "DemoProject_Reader"
  template_id = sonarqube_permission_template.demoproject.id
  permissions = ["user", "scan", "codeviewer"]
}

resource "sonarqube_permissions" "demoproject_reviewer" {
  group_name  = "DemoProject_Reviewer"
  template_id = sonarqube_permission_template.demoproject.id
  permissions = ["user", "scan", "codeviewer", "issueadmin", "securityhotspotadmin"]
}

resource "sonarqube_permissions" "demoproject_admin" {
  group_name  = "DemoProject_Admin"
  template_id = sonarqube_permission_template.demoproject.id
  permissions = ["user", "scan", "codeviewer", "issueadmin", "securityhotspotadmin", "admin"]
}
