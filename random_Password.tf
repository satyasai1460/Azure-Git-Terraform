resource "random_password" "Linuxpassword1" {
  length           = 16
  special          = true
  override_special = "_@!"
}

resource "random_password" "Linuxpassword2" {
  length           = 16
  special          = false
  override_special = "!@#$%^&*()_"
}

resource "random_password" "Linuxpassword3" {
  length  = 16
  special = true
}