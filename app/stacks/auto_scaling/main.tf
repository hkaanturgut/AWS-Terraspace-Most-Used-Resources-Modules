module "launch_template" {
    source = "../../modules/launch_template"
    name_prefix=var.name_prefix
    image_id=var.image_id
    instance_type=var.instance_type

  
}
module "auto_scaling_group" {
    source = "../../modules/auto_scaling_group"
    availability_zones=var.availability_zones
    desired_capacity=var.desired_capacity
    max_size=var.max_size
    min_size=var.min_size
    launch_template_id=module.launch_template.id
    launch_template_version=var.launch_template_version 
  
}