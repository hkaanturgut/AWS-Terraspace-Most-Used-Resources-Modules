module "cloudwatch_metric_alarm" {
  source                    = "../../modules/cloudwatch_metric_alarm"
  alarm_name                = var.alarm_name
  comparison_operator       = var.comparison_operator
  evaluation_periods        = var.evaluation_periods
  metric_name               = var.metric_name
  namespace                 = var.namespace
  period                    = var.period
  statistic                 = var.statistic
  threshold                 = var.threshold
  alarm_description         = var.alarm_description
  insufficient_data_actions = var.insufficient_data_actions

}