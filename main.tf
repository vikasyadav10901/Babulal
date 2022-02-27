
provider "azurerm" {
version = "2.2.0"
features {}
    subscription_id = "734a5e6d-bffc-423b-8bb5-67d02e0ceb04"
    tenant_id ="189de737-c93a-4f5a-8b68-6f4ca9941912"
}


resource "azurerm_resource_group" "web_server_rg" {
name = var.web_server_rg 
location = var.web_server_location
}

resource "azurerm_virtual_network" "web_server_vnet" {
    name =  "${var.resource_prefixvnet}-vnet"
    location = var.web_server_location
    resource_group_name =  azurerm_resource_group.web_server_rg.name
    address_space = [var.web_server_address_space]
}
