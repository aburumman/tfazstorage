provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "newtfstate" {
  name     = var.resource_group
  location = var.location
}

resource "azurerm_storage_account" "newtfstate" {
  name                     = var.storage_account_name
  account_tier             = var.account_tier
  resource_group_name      = azurerm_resource_group.newtfstate.name
  account_replication_type = var.account_replication_type
  location                 = var.location
}

resource "azurerm_storage_container" "newtfstate" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.newtfstate.name
  container_access_type = var.container_access_type

#   depends_on = [
#       azurerm_storage_account
#   ]
}


