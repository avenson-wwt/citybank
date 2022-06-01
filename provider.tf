 terraform {
   required_providers {
     azurerm = {
       source  = "hashicorp/azurerm"
       version = "=3.8.0"
     }
   }
 }
# Configure the Microsoft Azure Provider
 provider "azurerm" {
   features {}
   subscription_id = "a19d8d27-7af5-408a-9eb2-3c6ece936d62"
 }
