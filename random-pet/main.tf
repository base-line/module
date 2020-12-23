resource "random_pet" "name" {
  length = 4
  prefix = "pre"
  separator = "-"
  keepers = {
    "key" = "value"
  }
}