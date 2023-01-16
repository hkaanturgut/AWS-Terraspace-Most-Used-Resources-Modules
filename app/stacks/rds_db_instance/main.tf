module "rds_db_instance" {
    source = "../../modules/rds_db_instance"
    allocated_storage=var.allocated_storage
    db_name=var.db_name
    engine=var.engine
    engine_version=var.engine_version
    instance_class=var.instance_class
    username=var.username
    password=var.password
    parameter_group_name=var.parameter_group_name
    skip_final_snapshot= var.skip_final_snapshot
  
}
