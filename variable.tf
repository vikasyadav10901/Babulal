variable "web_server_location" {
  type = string
  default = "westus2"
}

variable "web_server_rg" {
  type = string
  default = "web-rg"
}

variable "resource_prefixvnet" {
  type = string
  default = "web-server"
}

variable "web_server_address_space" {
  type = string
  default = "1.0.0.0/22"
}
