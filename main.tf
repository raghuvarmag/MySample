# Configure the provider
provider "azurerm" {
    version = "=1.20.0"
  subscription_id = "4027ce90-56f7-474c-a0fd-2ad77225d74c"
  client_id       = "142e2013-94ac-4e99-bab1-c5581a7fb6da"
  client_secret   = "a528117d-917c-493b-b5ce-1a256a8e2418"
  tenant_id       = "65a7c826-a96e-4d7c-a211-7030f2275399"

}

# Create a new resource group
resource "azurerm_resource_group" "rg" {
    name     = "RaghuTFResourceGroupOld"
    location = "eastus"
}

# Create a resource group
resource "azurerm_resource_group" "rgvar" {
    name     = "${var.prefix}TFRGVar"
    location = "${var.location}"
    tags     = "${var.tags}"
}

# Create a new resource group
resource "azurerm_resource_group" "rg1" {
    name     = "RaghuTFResourceGroup1"
    location = "eastus"
}
