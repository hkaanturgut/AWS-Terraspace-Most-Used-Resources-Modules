module "sns_topic" {
    source = "../../modules/sns_topic"
    sns_topic_name=var.sns_topic_name
  
}