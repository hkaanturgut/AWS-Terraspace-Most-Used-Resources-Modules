
resource "aws_elastic_beanstalk_environment" "elastic_beanstalk_env" {
  name                = var.elastic_beanstalk_env_name
  application         = var.application
  solution_stack_name = var.solution_stack_name
}