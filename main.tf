variable "message" {
  default = "Hello, Terraform!"
}

resource "null_resource" "foobar" {
  provisioner "local-exec" {
    command = "echo ${var.message}"
  }
}
