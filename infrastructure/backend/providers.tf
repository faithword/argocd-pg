provider "aws" {
  region = "eu-west-2"
  alias  = "primary"

  default_tags {
    tags = {
      Owner       = "Tehila"
      Service     = "ArgoCD"
      CostCentre  = "argocd"
      Environment = "Development"
    }
  }
}