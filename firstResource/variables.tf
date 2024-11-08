variable "location" {

  type = string

  description = "This is a variable that holds location"

  default = "West Europe"

}

variable "resource_group_name" {

  type = string

  description = "This variable holds the resource group name"



}

variable "tags" {

  type = any

  description = "This holds tags"

}