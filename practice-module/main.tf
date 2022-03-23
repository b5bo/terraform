resource "aws_iam_group" "bohyun-tf-group" {
    count = var.team_count
    name = "bohyun-test-serverteam${count.index}"
}

resource "aws_iam_user" "bohyun-tf-test" {
    for_each = toset(var.user_list)
    name = each.key
}

