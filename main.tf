resource "github_repository" "repos" {
  for_each = toset(var.repositories)

  name        = each.value
  visibility  = "public"
  auto_init = true
  allow_merge_commit = true
  has_issues = true
  allow_squash_merge = false
  vulnerability_alerts = true
}

resource "github_branch_default" "default" {
  for_each = github_repository.repos
  repository = each.value.name
  branch     = "main"
}