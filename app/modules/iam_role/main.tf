resource "aws_iam_role" "iam_for_lambda" {
  name = var.iam_for_lambda_name

  assume_role_policy = var.assume_role_policy

}