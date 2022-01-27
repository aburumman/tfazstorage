output "resource_group_name" {
    value = azurerm_resource_group.newtfstate.name
}

output "storage_account_name" {
    value = azurerm_storage_account.newtfstate.name
}

output "container_name" {
    value = azurerm_storage_container.newtfstate.name
}
