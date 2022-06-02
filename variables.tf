## TF Cloud Veriables ##

variable "ARM_TENANT_ID" {}
variable "ARM_SUBSCRIPTION_ID" {}
variable "ARM_CLIENT_SECRET" {}
variable "ARM_CLIENT_ID" {}

variable "rghub" {}
variable "rgcore" {}
variable "ussc" {}
# variable "hubvnet-prefix" {}
variable "itss-addcs" {
  type        =  list
}
variable "hubvnet" {}
variable "hubvnet-subnet1" {}
variable "hubvnet-sub1-prefix" {}
variable "prodtag" {}
variable "bizunit-IT" {}
variable "deploymec" {}
variable "owner" {}
variable "productpan" {}
variable "usnc" {}
variable "sub-pan-trust" {}
variable "sub-pan-untrust" {}
variable "sub-pantrust-prefix" {}
variable "sub-panuntrust-prefix" {}
variable "sub-panmgmt-prefix" {}
variable "sub-pan-mgmt" {}
variable "avset-dc-ussc" {}
variable "sub-srv-itss" {}
variable "sub-srvitss-prefix" {}
variable "image_publisher" {}
variable "image_offer" {}
variable "image_sku" {}
variable "image_version" {}
variable "admin_username" {}
variable "admin_password" {}
variable "vm_size" {}
