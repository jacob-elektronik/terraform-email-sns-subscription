{
  "AWSTemplateFormatVersion": "2010-09-09",
  "Resources": {
    "EmailSNSTopic": {
      "Type": "AWS::SNS::Subscription",
      "Properties": {
        "Endpoint": "${email}",
        "Protocol": "email",
        "TopicArn": "${topic_arn}"
      }
    }
  }
}


