resource "aws_elastic_beanstalk_application" "elastic_beanstalk_app" {
  name        = var.elastic_beanstalk_app_name
  description = var.elastic_beanstalk_app_description
}