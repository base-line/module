# module
Terraform example of module

## Pre-requirements
- [git](https://git-scm.com/downloads) need to be installed 
- [terraform](https://www.terraform.io/downloads.html) need to be installed 

## How to consume

```bash
git clone git@github.com:base-line/module.git
cd module
terraform init
terraform apply
```

## As result

`main.tf` in root directory will consume module from sub-directory `random-pet`

check running `terraform state list`

```bash
module.pet.random_pet.name
```

and resource created in root module `terraform show`

```bash
# module.pet.random_pet.name:
resource "random_pet" "name" {
    id        = "pre-instantly-purely-careful-gorilla"
    keepers   = {
        "key" = "value"
    }
    length    = 4
    prefix    = "pre"
    separator = "-"
}
```

## Destroy

destroy created infrastructure if need be

```
terraform destroy
```
