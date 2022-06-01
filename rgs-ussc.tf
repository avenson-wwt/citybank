#################################
# Azure Resource Group Creation #
#################################

# Create a resource group: Palo Alto Azure Resources #
resource "azurerm_resource_group" "rg_pan" {
    name     = "rg-PaloAlto"
    location = var.ussc

    tags = {
        Environment         = var.prodtag 
        BusinessUnit        = var.bizunit-IT 
        DeploymentDate      = "June 1, 2022" 
        DeploymentMec       = var.deploymec 
        productowner        = var.owner
        product             = var.productpan
    }
}

# Create a resource group: ASR Source S. Central Azure Resources #
resource "azurerm_resource_group" "rg_asr_ussc" {
    name     = "rg-asr-ussc"
    location = var.ussc

    tags = {
        Environment         = var.prodtag 
        BusinessUnit        = var.bizunit-IT 
        DeploymentDate      = "June1, 2022" 
        DeploymentMec       = var.deploymec 
        productowner        = var.owner
    }
}
