provider "packet" {
  auth_token = var.auth_token
}

module "citus" {
  source = "../.."
}
