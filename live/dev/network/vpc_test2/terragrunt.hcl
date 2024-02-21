terraform {
  # source = "git::https://github.com/username/repository_name.git//path/to/module/version/"
  source = "git::https://github.com/johanfabi/terraform.git//google/network/vpc/version/9.0.0"
}

locals {
  # common_vars = yamldecode(file(find_in_parent_folders("common_vars.yaml")))
  this        = yamldecode(file("${get_terragrunt_dir()}/this.yaml"))
}

inputs = merge(
  # local.common_vars,
  local.this
)

prevent_destroy = false  # Set false if you want to allow to destroy this resource
skip            = false  # Set true if you want to skip making changes to this resource