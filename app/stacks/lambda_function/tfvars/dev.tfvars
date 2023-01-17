# Required variables:
iam_for_lambda_name   = "iam_for_lambda"
filename              = "lambda_function_payload.zip"
function_name         = "lambda_function_name"
handler               = "index.test"
runtime               = "nodejs14.x"
assume_role_policy  = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
source_code_hash    = filebase64sha256("lambda_function_payload.zip")
