variable "amap" {
  type = map(any)
}

resource "random_password" "secret" {
  length  = 9
  special = true
}

resource "random_pet" "server" {
  for_each = var.amap

  keepers = {
    key = each.key
    val = each.value
  }
}
