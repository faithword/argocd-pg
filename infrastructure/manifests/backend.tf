terraform {
  backend "s3" {
    bucket = "argocd-pg-tf-bucket"
    key    = "key/terraform.tfstate"
    region = "eu-west-2"
  }
}