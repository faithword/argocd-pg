provider "aws" {
  region = "eu-west-2"
  alias  = "primary"
  assume_role {
    role_arn     = "arn:aws:iam::845091769606:role/tehila-dev"
    session_name = "terraform-session"
  }

  default_tags {
    tags = {
      Owner       = "Tehila"
      Service     = "ArgoCD"
      CostCentre  = "argocd"
      Environment = "Development"
    }
  }
}