# #Public NAT GATEWAY

# variable "allocation_id" {
#     type = any
  
# }
# variable "public_nat_gw_subnet_id" {
#     type = any
  
# }
# variable "tags" {
#     type = map(any)
  
# }



# Private NAT GATEWAY

variable "connectivity_type" {
    type = string
  
}
variable "private_nat_gw_subnet_id" {
    type = any
  
}
