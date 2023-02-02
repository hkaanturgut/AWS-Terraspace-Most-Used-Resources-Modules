module "iam_role" {
  source             = "../../modules/iam_role"
  iam_role_name      = var.iam_role_name
  assume_role_policy = var.assume_role_policy

}

module "iam_role_policy" {
  source     = "../../modules/iam_role_policy"
  policy_arn = var.policy_arn
  role       = module.iam_role.name

}