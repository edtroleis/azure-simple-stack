# Azure simple-stack with Terraform
```
Resource group: resource-group-example

	\_ SQL Server (logical server) - sqlserver-server-example

		\_ SQL Database	- sqlserver-database-example
	
	\_ App Service Plan app-service-plan-example
	
		\_ Web App - myapp-example
```


## Install az cli in Windows
https://docs.microsoft.com/pt-br/cli/azure/install-azure-cli-windows?view=azure-cli-latest&tabs=azure-cli


## Configuring az cli credentials
https://www.terraform.io/docs/providers/azurerm/guides/service_principal_client_secret.html

https://www.terraform.io/docs/providers/azurerm/guides/azure_cli.html

```
Execute the commands below in Windows cmd terminal
az login

az account list

az account set --subscription="subscriptionId"

az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/subscriptionId"

az login --service-principal -u CLIENT_ID -p CLIENT_SECRET --tenant TENANT_ID
* appId is the client_id defined above.
* password is the client_secret defined above.
* tenant is the tenant_id defined above.

az logout
```

## Configuring the Service Principal in Terraform
```
Executed in git bash
export ARM_CLIENT_ID="clintId"
export ARM_CLIENT_SECRET="clientSecret"
export ARM_SUBSCRIPTION_ID="subscriptionId"
export ARM_TENANT_ID="tenantId"
```

## Executing Terraform
```
*** Inside the project directory
terraform init
terraform plan
terraform apply
terraform destroy
```

## Configure git repo
```
git init
git add .
git commit -m "message"
git remote add origin "remote-path"
git push origin master

vim .gitignore
.terraform
*.tfstate
*.tfstate.backup
*.pub
*.log
```