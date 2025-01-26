# Create a Management Group
resource "azurerm_management_group" "example" {
  name         = "hub-mg"
  display_name = "Example Management Group"
}

#Assign a subscription to the management group
resource "azurerm_management_group_subscription_association" "example" {
  management_group_id = azurerm_management_group.example.id
  subscription_id     = "/subscriptions/b0f4b302-2cb4-43b9-b787-85b777620332"
}