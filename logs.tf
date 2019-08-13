# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "myapp_log_group" {
  name              = "/ecs/myapp-app"
  retention_in_days = 30

  tags = {
    Name = "myapp-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "myapp_log_stream" {
  name           = "myapp-log-stream"
  log_group_name = aws_cloudwatch_log_group.myapp_log_group.name
}

