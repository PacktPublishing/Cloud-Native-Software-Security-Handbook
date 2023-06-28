provider "vault" {} 

data "vault_generic_secret" "mysecret" { 
  path = "secret/mysecret" 
} 

output "mysecret" { 
  value = data.vault_generic_secret.mysecret.data["value"] 
} 