provider "aws" {
    profile = "meshdev-AdministratorRoleExternal"
    region = "ap-northeast-2"
}

resource "aws_iam_group" "bohyun-tf-group" {
    count = 2
    name = "bohyun-tf-group-${count.index}"
}

resource "aws_iam_user" "bohyun-tf-test" {
    for_each = toset(["bohyun-tf-test", "tf-test"])
    name = each.key
}
