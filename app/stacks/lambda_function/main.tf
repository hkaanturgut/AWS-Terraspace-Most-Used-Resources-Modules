module "iam_for_lambda" {
    source = "../../modules/iam_role"
    iam_for_lambda_name= var.iam_for_lambda_name
    assume_role_policy= var.assume_role_policy
  
}

module "lambda_function" {
    source = "../../modules/lambda_function"
    filename=var.filename
    function_name=var.function_name
    role=module.iam_for_lambda.arn
    handler=var.handler
    source_code_hash=var.source_code_hash
    runtime= var.runtime
  
}