# SNS Email subscription

## General

By using this module you can subscribe with an email address to an existing sns topic.
The module uses a cloudformation template, because terraform does not implement email protocol by default. (see https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#email)

## Usage

Just add this to your existing terraform file.

```hcl-terraform
module "email_subscription" {
  source = "git::git@github.com:jacob-elektronik/terraform-email-sns-subscription.git"

  email = "test@test.de"
  topic_arn = "arn:aws:sns:eu-central-1:123456789:mytopic"
  
  environment = "dev"
  stack = "myStackName"
}
```