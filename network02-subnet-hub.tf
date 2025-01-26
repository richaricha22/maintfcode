# Create Subnet 1
resource "azurerm_subnet" "subnet_a" {
  name                 = "subnet-a"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.1.0/24"]
}

# Create Subnet 2
resource "azurerm_subnet" "subnet_b" {
  name                 = "subnet-b"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.2.0/24"]
}