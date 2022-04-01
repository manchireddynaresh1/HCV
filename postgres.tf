resource "azurerm_resource_group" "hcv-tf-group" {
  name     = "hashicorp-vault"
  location = "EAST US"
}

resource "azurerm_postgresql_server" "hcv-psql-server" {
  name                = "postgresql-server-hcv"
  location            = azurerm_resource_group.hcv-tf-group.location
  resource_group_name = azurerm_resource_group.hcv-tf-group.name

  sku_name = "B_Gen5_2"

  storage_mb                   = 5120
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = true

  administrator_login          = "psqladmin"
  administrator_login_password = "Siva@123$"
  version                      = "10"
  ssl_enforcement_enabled      = true
}

resource "azurerm_postgresql_database" "psql-database-hcv" {
  name                = "psql-database-hcv"
  resource_group_name = azurerm_resource_group.hcv-tf-group.name
  server_name         = azurerm_postgresql_server.hcv-psql-server.name
  charset             = "UTF8"
  collation           = "English_United States.1252"
}