# Create Virtual Network (VNet)
resource "azurerm_virtual_network" "main" {
  name                = "vnet-main-landingzone"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]

  tags = {
    Name = "main-vnet"
  }
  depends_on = [
    azurerm_resource_group.main
  ]
}
