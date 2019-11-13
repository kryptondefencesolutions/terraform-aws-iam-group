resource "aws_iam_group" "default_group" {
  name = var.name
  path = "/"
}

resource "aws_iam_group_policy_attachment" "default" {
  group      = aws_iam_group.default_group.name
  policy_arn = var.grouparn
}

