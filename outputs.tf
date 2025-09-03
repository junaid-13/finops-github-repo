output "repo_names" {
  value = [for repo in github_repository.repos : repo.name]
}

output "repo_urls" {
  value = [for repo in github_repository.repos : repo.html_url]
}