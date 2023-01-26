iam_role_name          = "deop-iam"
policy_arn             = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"


assume_role_policy   = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
