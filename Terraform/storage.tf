resource "azurerm_storage_account" "example" {
  name                     = "${var.project_name}st101"
  resource_group_name      = azurerm_resource_group.nimbus_rg.name
  location                 = azurerm_resource_group.nimbus_rg.location
  account_tier             = "Standard"
  account_replication_type = var.storage_replication_type

  tags = {
    environment = "dev"
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "tfstate"
  storage_account_id = azurerm_storage_account.example.id
  container_access_type = "private"
}