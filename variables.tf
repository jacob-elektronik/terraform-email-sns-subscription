variable "environment" {
  description = "The name of the environment"
  default     = "dev"
}

variable "stack" {
  description = "The stack to deploy"
  default     = "MyStack"
}

// Configuration
variable "topic_arn" {
  type        = "string"
  description = "Name shown in confirmation emails"
}

variable "email" {
  description = "Email address to send notifications to"
}

