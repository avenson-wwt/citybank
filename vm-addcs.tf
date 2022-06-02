resource "azurerm_network_interface" "nic" {
  name                = "nic-usscprddc0${count.index}"
  location            = data.azurerm_resource_group.rgdata.location
  resource_group_name = data.azurerm_resource_group.rgdata.name
  count               = 2

  ip_configuration {
    name                                    = "ipconfig${count.index}"
    subnet_id                               = data.azurerm_subnet.subnetdata.id
    private_ip_address_allocation           = "Dynamic"
  }
}


resource "azurerm_virtual_machine" "vm" {
  name                  = "usscprddc0${count.index}"
  location              = data.azurerm_resource_group.rgdata.location
  resource_group_name   = data.azurerm_resource_group.rgdata.name
  availability_set_id   = data.azurerm_availability_set.avsetdcdata.id
  vm_size               = var.vm_size
  network_interface_ids = ["${element(azurerm_network_interface.nic.*.id, count.index)}"]
  count                 = 2

  storage_image_reference {
    publisher           = var.image_publisher
    offer               = var.image_offer
    sku                 = var.image_sku
    version             = var.image_version
  }

  storage_os_disk {
    name          = "osdisk${count.index}"
    create_option = "FromImage"
  }

  os_profile {
    computer_name  = "vm${count.index}"
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_windows_config {}
}
