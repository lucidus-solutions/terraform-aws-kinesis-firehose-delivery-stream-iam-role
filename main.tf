resource "aws_iam_role" "this" {
  name                  = "${local.stack}-kinesis-firehose-delivery-stream-role"
  description           = "Role assumed by Amazon Kinesis Firehose Delivery Stream services"
  assume_role_policy    = data.aws_iam_policy_document.assume_role.json
  force_detach_policies = var.force_detach_policies
}
