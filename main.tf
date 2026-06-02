module "resource_group" {
  source  = "./modules/resource_group"
  rg-name = var.rg-name

}
module "virtual_network" {
  source     = "./modules/virtual_network"
  vnet-name  = var.vnet-name
  depends_on = [module.resource_group]
}

module "subnet" {
  source      = "./modules/subnet"
  subnet-name = var.subnet-name
  depends_on  = [module.resource_group]

}

module "storage_account" {

  source     = "./modules/storage_account"
  strg-name  = var.strg-name
  depends_on = [module.resource_group]
}