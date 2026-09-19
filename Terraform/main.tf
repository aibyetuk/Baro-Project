resource "azurerm_resource_group" "nimbus_rg"{
    name     = "${var.project_name}-rg"
    location = var.location
    tags = var.tags
    
  
}