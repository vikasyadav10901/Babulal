provider "azurerm" {
version = "2.2.0"
features {}
}

module "VNET_Module" {
source = "../VNET"
web_server_address_space = var.web_server_address_space
resource_prefixvnet = var.web_server_address_space
web_server_location = var.web_server_location
web_server_rg = var.web_server_rg

}
