
#Terraform functions
locals {
  myList = [ {“a”:{“b”:{“c”:”d”}}} ]

  value = local.myList[a]
  # value is equal to "d"
}
