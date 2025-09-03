variable "github_token" {
  type = string
  sensitive = true
  }

variable "github_owner" {
    type = string
    default = "junaid-13"
}

variable "repositories" { 
    type = list(string)
    default = [ "infra-live", "platform-gitops", "services" ]
}
