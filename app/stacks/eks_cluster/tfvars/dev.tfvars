eks_cluster_name       = "deop-test-cluster"
subnet_ids             = ["subnet-09b0f8eb707352049","subnet-014275ae4e2ac0ee3"] 

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

