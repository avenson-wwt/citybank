########################
#  DATA SOURCE BLOCKS  #
########################

# Get the existing ITSS (Hub) Resource Group
data "azurerm_resource_group" "rgdata" {
  name = var.rghub
}

# Data for ITSS Hub Virtual Network - S. Central #
data "azurerm_virtual_network" "scus_hubvnetdata" {
  name = var.hubvnet
  resource_group_name = var.rgcore
}

