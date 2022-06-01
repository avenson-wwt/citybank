##########################################
# Azure Availability Set Creation - USSC #
##########################################

# Availability Set for IaaS DCs - S. Central #
resource "azurerm_availability_set" "avset_dc_ussc" {
  name                              = var.avset-dc-ussc
  location                          = data.azurerm_resource_group.rgdata.location
  resource_group_name               = data.azurerm_resource_group.rgdata.name
  platform_fault_domain_count       = 2
  platform_update_domain_count      = 2
  managed                           = true


    tags = {
        Environment = var.prodtag 
        BusinessUnit = var.bizunit-IT 
        DeploymentDate = "June 1, 2022" 
        DeploymentMec = var.deploymec 
        productowner = var.owner
    }
}
