provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "v-lucianos-terraform"
  location = "East US"
  tags = {
    "terraform" = "true"
  }
}

resource "azurerm_cosmosdb_account" "example" {
  name                = "example-cosmosdb-account-shared-throuput"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  offer_type          = "Standard"
  kind                = "GlobalDocumentDB"

  consistency_policy {
    consistency_level       = "Session"
    max_interval_in_seconds = 10
    max_staleness_prefix    = 200
  }

  geo_location {
    location          = azurerm_resource_group.example.location
    failover_priority = 0
  }

  tags = {
    "terraform" = "true"
  }
}

resource "azurerm_cosmosdb_sql_database" "terraform_example" {
  name                = "example-sql-database"
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_cosmosdb_account.example.name
  throughput          = 2000
}

