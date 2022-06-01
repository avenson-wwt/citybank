#################################
# Azure VNET Subnet Creation #
#################################

# Create Subnet Trust: Palo Alto Azure Resources #
resource "azurerm_subnet" "sub_pan-trust" {
  name                 = var.sub-pan-trust
  resource_group_name  = data.azurerm_resource_group.rgcoredata.name
  virtual_network_name = data.azurerm_virtual_network.scus_hubvnetdata.name
  address_prefixes     = var.sub-pantrust-prefix
  }
  
# Create Subnet Untrust: Palo Alto Azure Resources #
resource "azurerm_subnet" "sub_pan-untrust" {
  name                 = var.sub-pan-untrust
  resource_group_name  = data.azurerm_resource_group.rgcoredata.name
  virtual_network_name = data.azurerm_virtual_network.scus_hubvnetdata.name
  address_prefixes     = var.sub-panuntrust-prefix
}
  
# Create Subnet MGMT: Palo Alto Azure Resources #
resource "azurerm_subnet" "sub_pan-mgmt" {
  name                 = var.sub-pan-mgmt
  resource_group_name  = data.azurerm_resource_group.rgcoredata.name
  virtual_network_name = data.azurerm_virtual_network.scus_hubvnetdata.name
  address_prefixes     = var.sub-panmgmt-prefix
}
  
# Create Subnet ITSS Servers #
resource "azurerm_subnet" "sub_itss-servers" {
  name                 = var.sub-srv-itss
  resource_group_name  = data.azurerm_resource_group.rgcoredata.name
  virtual_network_name = data.azurerm_virtual_network.scus_hubvnetdata.name
  address_prefixes     = var.sub-srvitss-prefix
}
