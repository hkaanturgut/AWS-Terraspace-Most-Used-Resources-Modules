module "elastic_beanstalk_app" {
    source = "../../modules/elastic_beanstalk_app"
    elastic_beanstalk_app_name=var.elastic_beanstalk_app_name
    elastic_beanstalk_app_description=var.elastic_beanstalk_app_description
  
}

module "elastic_beanstalk_env" {
    source = "../../modules/elastic_beanstalk_environment"
    elastic_beanstalk_env_name=var.elastic_beanstalk_env_name
    application=module.elastic_beanstalk_app.name
    solution_stack_name=var.solution_stack_name
  
}