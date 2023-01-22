locals {
  env = substr("${terraform.workspace}", 27, -1)
}
