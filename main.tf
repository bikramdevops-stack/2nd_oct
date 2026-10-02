terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.75.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "dev_rg"
    storage_account_name = "mystoagebhakua"
    container_name       = "mycontainer"
    key                  = "terraform.tfstate"

  }
}

resource "azurerm_resource_group" "rg" {
  name     = "hello"
  location = "east us"

  tags = {
    owner = "rishi"
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "hi"
  location = "east us"

  tags = {
    owner = "risi"
  }
}


resource "azurerm_storage_account" "st" {
  name                     = "stostosto"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "east us"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


