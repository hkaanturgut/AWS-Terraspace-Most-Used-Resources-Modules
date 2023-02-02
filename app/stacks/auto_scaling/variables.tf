# LAUNCH TEMPLATE

variable "name_prefix" {
  type = string

}
variable "image_id" {
  type = string

}
variable "instance_type" {
  type = string

}

# AUTO SCALING GROUP

variable "availability_zones" {
  type = list(string)

}
variable "desired_capacity" {
  type = number

}
variable "max_size" {
  type = number

}
variable "min_size" {
  type = number

}
variable "launch_template_version" {
  type = string

}