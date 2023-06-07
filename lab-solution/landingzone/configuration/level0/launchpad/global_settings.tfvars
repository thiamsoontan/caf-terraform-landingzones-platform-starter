
# Do not change the following values

# naming convention settings
# for more settings on naming convention, please refer to the provider documentation: https://github.com/aztfmod/terraform-provider-azurecaf
#
# passthrough means the default CAF naming convention is not applied and you are responsible
# of the unicity of the names you are giving. the CAF provider will clear out
passthrough = false
# adds random chars at the end of the names produced by the provider
# Do not change the following values once the launchpad deployed.
# Enable tag inheritance (can be changed)
inherit_tags = false
# When passthrough is set to false, define the number of random characters to add to the names
random_length = 3
# Set the prefix that will be added to all azure resources.
# if not set and passthrough=false, the CAF module generates a random one.
# cluster or agency code - project code 
prefix = "ignite"
# suffix = "agz-xyz-sit-iz"

# Default region. When not set to a resource it will use that value
default_region = "region1"

# naming convention settings
# for more settings on naming convention, please refer to the provider documentation: https://github.com/aztfmod/terraform-provider-azurecaf
#
# passthrough means the default CAF naming convention is not applied and you are responsible
# of the unicity of the names you are giving. the CAF provider will clear out
# passthrough = false
# adds random chars at the end of the names produced by the provider
# random_length = 3

# Inherit_tags defines if a resource will inherit it's resource group tags
#inherit_tags = true

regions = {
  region1 = "southeastasia"
  region2 = "australiacentral"
#  region1 = "eastus"
#  region2 = "eastus2"
}

launchpad_key_names = {
  azuread_app            = "caf_launchpad_level0"
  keyvault_client_secret = "aadapp-caf-launchpad-level0"
  tfstates = [
    "level0",
  ]
}

tags = {
  Project_Code               = "CAF-TF"
  Name                       = "CAF Terraform Landingzones and solutions"
  Data_Classification        = "Internal"
  Application_Classification = "Standard"
}

