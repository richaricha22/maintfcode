# Create Network Security Group (NSG)
resource "azurerm_network_security_group" "nsg" {
  name                = "nsg-landingzone"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

}

# Associate NSG with Subnet A
resource "azurerm_subnet_network_security_group_association" "subnet_a_nsg" {
  subnet_id                 = azurerm_subnet.subnet_a.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}

# Associate NSG with Subnet B
resource "azurerm_subnet_network_security_group_association" "subnet_b_nsg" {
  subnet_id                 = azurerm_subnet.subnet_b.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}

