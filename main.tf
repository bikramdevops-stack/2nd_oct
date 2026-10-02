terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.6.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "dev_rg"
    storage_account_name = "mystoagebhakua"
    container_name       = "mycontainer"
    key                  = "terraform.tfstate"

  }
}

provider "azurerm" {
  features {}
}



resource "azurerm_resource_group" "rg" {
  name     = "hello"
  location = "east us"

  tags = {
    owner = "rishi"
  }
}

resource "azurerm_resource_group" "rig" {
  name     = "gelo"
  location = "east us"

  tags = {
    owner = "rishii"
  }
}

resource "azurerm_resource_group" "mig" {
  name     = "yeelo"
  location = "east us"

  tags = {
    owner = "rishii"
  }
}

resource "azurerm_resource_group" "rii" {
  name     = "hi"
  location = "east us"

  tags = {
    owner = "riski"
  }
}

resource "azurerm_resource_group" "riyi" {
  name     = "heeeei"
  location = "east us"

  tags = {
    owner = "rismi"
  }
}

resource "azurerm_resource_group" "riyiiii" {
  name     = "heettteei"
  location = "east us"

  tags = {
    owner = "rismiii"
  }
}

resource "azurerm_resource_group" "riyyyiiii" {
  name     = "heetaatteei"
  location = "east us"

  tags = {
    owner = "rismaaiii"
  }
}



resource "azurerm_storage_account" "st" {
  name                     = "stostosto"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "east us"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


