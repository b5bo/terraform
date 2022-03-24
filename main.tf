provider "aws" {
  profile = "dev"
  region  = "ap-northeast-2"
}

module "iam-team" {
  source      = "./iam"
  group_count = 2
  user_list   = ["ba-tf-test", "reum-tf-test"]
}