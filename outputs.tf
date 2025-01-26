# Output the VNet and Subnet IDs
output "vnet_id" {
  value = azurerm_virtual_network.main.id
}

output "subnet_a_id" {
  value = azurerm_subnet.subnet_a.id
}

output "subnet_b_id" {
  value = azurerm_subnet.subnet_b.id
}