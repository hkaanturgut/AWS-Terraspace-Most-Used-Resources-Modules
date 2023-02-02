module "iam_role" {
  source             = "../../modules/iam_role"
  iam_role_name      = var.iam_role_name
  assume_role_policy = var.assume_role_policy

}

module "eks_iam_role_policy" {
  source     = "../../modules/iam_role_policy"
  policy_arn = var.policy_arn
  role       = module.iam_role.name

}

module "eks_cluster" {
  source               = "../../modules/eks_cluster"
  eks_cluster_name     = var.eks_cluster_name
  eks_cluster_role_arn = module.iam_role.arn
  subnet_ids           = var.subnet_ids

}