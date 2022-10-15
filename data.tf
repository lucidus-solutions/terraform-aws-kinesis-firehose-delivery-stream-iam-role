data "aws_iam_policy_document" "assume_role" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Serive"
      identifiers = ["firehose.amazonaws.com"]
    }
  }
}
