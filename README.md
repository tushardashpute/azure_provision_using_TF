# azure_provision_using_TF

To privision resources using TF you first need to create service principal

https://learn.microsoft.com/en-us/azure/developer/terraform/get-started-cloud-shell-bash?tabs=bash#create-a-service-principal

az ad sp create-for-rbac --name setupTF --role Contributor --scopes /subscriptions/2b175706-033b-4b26-bb13-bbd0d42875b5

{
  "appId": "2f9b799e-c39a-470f-a349",
  "displayName": "setupTF",
  "password": "NB88Q~G92pDNAXaiCxscNaJX~Om",
  "tenant": "f7a68658-d61c-4625-a70b-"
}

export ARM_SUBSCRIPTION_ID="<azure_subscription_id>"
export ARM_TENANT_ID="<azure_subscription_tenant_id>"
export ARM_CLIENT_ID="<service_principal_appid>"
export ARM_CLIENT_SECRET="<service_principal_password>"

Use this info for terraform azure provider.
