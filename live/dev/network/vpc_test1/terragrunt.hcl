terraform {
  # source = "git::https://github.com/username/repository_name.git//path/to/module/version/"
  source = "git::https://github.com/johanfabi/terraform.git//google/network/vpc/version/9.0.0"
}

inputs = {
  project_id = "big-query-poc-405815"
  region     = "us-central1"
  vpc_name   = "test1"
}
