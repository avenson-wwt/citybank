########################
#  DATA SOURCE BLOCKS  #
########################

# Get the existing ITSS (Hub) Resource Group
data "azurerm_resource_group" "rgdata" {
  name = var.rghub
}

data "azurerm_resource_group" "rgcoredata" {
  name = var.rgcore
}

# Data for ITSS Hub Virtual Network - S. Central #
data "azurerm_virtual_network" "scus_hubvnetdata" {
  name = var.hubvnet
  resource_group_name = var.rgcore
}

# Data for Target VNET Subnet #
data "azurerm_subnet" "subnetdata" {
  name = var.sub-srv-itss
  resource_group_name = var.rgcore
  virtual_network_name = var.hubvnet
}
