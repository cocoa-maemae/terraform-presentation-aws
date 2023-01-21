locals {
  env = substr("${terraform.workspace}", 27, -1)
}

resource "aws_sqs_queue" "example" {
  name                      = "example-queue-${local.env}"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10
}