Upgrade to the latest version of azurerm 3.59 - https://registry.terraform.io/providers/hashicorp/azurerm/latest

Upgrade to the latest version of aztfmod 5.7.0-preview0 - https://github.com/aztfmod/terraform-azurerm-caf.git 

Use local copy of aztfmod /tf/caf/landingzones/aztfmod

Versions:

terraform: Terraform version v1.5.0-rc1
aztfmod/caf/azurerm: registry.terraform.io/aztfmod/caf/azurerm 5.6.9
landingzones: 5.6.9 
  - git clone https://github.com/Azure/caf-terraform-landingzones.git /tf/caf/landingzones
azurerm: 3.59
  - file to check: /tf/caf/landingzones/aztfmod/main.tf
aztfmod: 5.7.0-preview0 
  - git clone https://github.com/aztfmod/terraform-azurerm-caf.git /tf/caf/landingzones/aztfmod 
  - git checkout 5.7.0-preview0

- Using previously-installed azure/azapi v1.3.0
- Using previously-installed hashicorp/time v0.9.1
- Using previously-installed hashicorp/local v2.4.0
- Using previously-installed hashicorp/azuread v2.39.0
- Using previously-installed hashicorp/azurerm v3.59.0 >>>>>> https://registry.terraform.io/providers/hashicorp/azurerm/latest
- Using previously-installed hashicorp/external v2.2.3
- Using previously-installed hashicorp/null v3.1.1
- Using previously-installed hashicorp/random v3.3.2
- Using previously-installed hashicorp/tls v3.1.0
- Using previously-installed aztfmod/azurecaf v1.2.25 >>>>>> https://github.com/aztfmod/terraform-provider-azurecaf



[![Gitter](https://badges.gitter.im/aztfmod/community.svg)](https://gitter.im/aztfmod/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

# Cloud Adoption Framework landing zones for Terraform - Platform starter template

Microsoft [Cloud Adoption Framework for Azure](https://aka.ms/caf) provides you with guidance and best practices to adopt Azure.

A landing zone is a segment of a cloud environment, that has been preprovisioned through code, and is dedicated to the support of one or more workloads. Landing zones provide access to foundational tools and controls to establish a compliant place to innovate and build new workloads in the cloud, or to migrate existing workloads to the cloud. Landing zones use defined sets of cloud services and best practices to set you up for success.

## :rocket: Getting started: go read the docs!



Refer to the CAF Terraform landing zones documentation available at [GitHub Pages](https://aka.ms/caf/terraform).

![homepage](https://aztfmod.github.io/documentation/img/homepage.png)

## Community

Feel free to open an issue for feature or bug, or to submit a pull request.

In case you have any question, you can reach out to tf-landingzones at microsoft dot com.

You can also reach us on [Gitter](https://gitter.im/aztfmod/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft
trademarks or logos is subject to and must follow
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
