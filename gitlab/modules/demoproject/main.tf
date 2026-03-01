resource "gitlab_group" "example" {
  name        = "example"
  path        = "example"
  description = "An example group"
}

resource "gitlab_group_ldap_link" "test" {
  group         = "12345" # gitlab_group.example.id
  cn            = "testuser"
  group_access  = "developer" # reporter | developer | maintainer | owner
  ldap_provider = "ldapmain" # from gitlab.rb
}



resource "gitlab_project" "example" {
  name         = "example"
  description  = "An example project"
  namespace_id = gitlab_group.example.id
}
