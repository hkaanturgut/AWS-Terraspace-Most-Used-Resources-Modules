
resource "aws_autoscaling_group" "autoscaling_group" {
  availability_zones = var.availability_zones
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size

  launch_template {
    id      = var.launch_template_id
    version = var.launch_template_version
  }
}