rg-name = {
  rg1 = {
    name     = "kddi-rg"
    location = "Central India"
  }
}

vnet-name = {
  vnet1 = {
    name                = "ce-vnet"
    location            = "Central India"
    resource_group_name = "kddi-rg"
    address_space       = ["10.0.0.0/16"]
  }
}
strg-name = {
  strg1 = {
    name                     = "apnastrg"
    resource_group_name      = "kddi-rg"
    location                 = "Central India"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}

subnet-name = {
  subnet1 = {
    name                 = "inetrnal-subnet"
    resource_group_name  = "kddi-rg"
    virtual_network_name = "ce-vnet"
    address_prefixes     = ["10.0.1.0/16"]

  }
}
