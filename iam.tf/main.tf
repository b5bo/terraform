resource "aws_iam_group" "bareum-tf-group" {
    count = var.group_count
    name = "bareum-tf-test-${count.index}"
}

resource "aws_iam_user" "bareum-tf-test" {
    for_each = toset(var.user_list)
    name = each.key
}
