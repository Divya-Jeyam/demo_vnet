resource "azurerm_virtual_network" "main" {
  
  name                = "${var.vnetname}"
  address_space       ="${var.address}"
  location = "${var.location}"
  resource_group_name = "${var.name}"
}

resource "azurerm_subnet" "internal" {
  name                 = "${var.subnetname}"
  resource_group_name  = "${var.name}"
  virtual_network_name = "${azurerm_virtual_network.main.name}"
  address_prefix       = "${var.subnetaddress}"
}


#nsg
resource "azurerm_network_security_group" "main" {
  name                = "${var.nsgname}"
  location            = "${var.location}"
  resource_group_name = "${var.name}"
}


resource "azurerm_network_security_rule" "main" {
  name                        = "${var.nsgrulename}"
  priority                    = "${var.priority}"
  direction                   = "${var.direction}"
  access                      = "${var.access}"
  protocol                    = "${var.protocol}"
  source_port_range           = "${var.sourceport}"
  destination_port_range      = "${var.destinationport}"
  source_address_prefix       = "${var.sourceaddress}"
  destination_address_prefix  = "${var.destinationaddress}"
  resource_group_name         = "${var.name}"
  network_security_group_name = "${azurerm_network_security_group.main.name}"
}