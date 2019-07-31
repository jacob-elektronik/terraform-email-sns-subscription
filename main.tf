data "template_file" "cloudformation_sns_email_subscription_stack" {
  template = file("${path.module}/templates/email-sns-subscription.json.tpl")
  vars = {
    topic_arn = var.topic_arn
    email     = var.email
  }
}

resource "aws_cloudformation_stack" "sns_topic_subscription" {
  name          = "${var.environment}-${var.stack}-topic${var.suffix}"
  template_body = data.template_file.cloudformation_sns_email_subscription_stack.rendered

  tags = {
    Name        = "${var.environment}-${var.stack}-topic-subscription${var.suffix}"
    Stack       = var.stack
    Environment = var.environment
    Terraform   = true
    Workspace   = terraform.workspace
  }
}

