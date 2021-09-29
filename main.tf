terraform {
  required_providers {
    spacelift = {
      source = "downloads.spacelift.dev/spacelift-io/spacelift"
    }
  }
}

variable "amap" {
  type = map(any)
}

resource "random_pet" "server" {
  for_each = var.amap
  
  keepers = {
    key = each.key
    val = each.value
  }
}
