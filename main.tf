provider "aws" {
    profile = "dev"
    region = "ap-northeast-2"
}

resource "aws_iam_group" "bareum-tf-group" {
    count = 2
    name = "bareum-tf-group-${count.index}"
}

resource "aws_iam_user" "bareum-tf-test" {
    for_each = toset(["ba-tf-test", "reum-tf-test"])
    name = each.key
}