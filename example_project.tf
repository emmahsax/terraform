module "example_project" {
  source = "../terraform"

  project_name        = "example_project"
  description         = "Some random description here"
  visibility          = "public"
  additional_branches = ["other-branch"]

  additional_users = {
    "akw7" = { permission = "developer" }
  }

  labels = {
    "these-are-example"   = "0e8a16"
    "labels-in-different" = "D9534F"
    "colors"              = "355555"
  }

  branches_to_protect = {
    "main" = {
      push_access  = "developer"
      merge_access = "maintainer"
    }
    "other-branch" = {
      push_access  = "maintainer"
      merge_access = "maintainer"
    }
  }
}
