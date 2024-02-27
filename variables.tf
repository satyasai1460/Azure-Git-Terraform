variable "rg_name" {
  type = string
  #   default = "rg"
}

variable "location" {
  type = string
  #   default = "eastus"
}

variable "env" {
  type = string
  #   default = "Development"
}

variable "VNet" {
  type = string
  #   default = "Devops-Vnetwork"
}

variable "VNet_cidr" {
  type = string
  #   default = "10.35.0.0/16"
}

variable "VNet_dns" {
  type = list(any)
  #   default = ["8.8.8.8", "8.8.4.4"]
}

variable "suoerstar" {
  type = string
}
