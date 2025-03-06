If your cluster runs on EKS and you are using ECR, add the following:
json
{
  "credsStore": "ecr-login"
}
To use this credential helper for a specific ECR registry, create a credHelpers section with the URI of your ECR registry:
json
{
  "credHelpers": {
    "public.ecr.aws": "ecr-login",
    "<aws_account_id>.dkr.ecr.<region>.amazonaws.com": "ecr-login"
  }
}
