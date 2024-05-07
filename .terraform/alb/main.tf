resource "aws_lb_target_group" "this" {
  name        = "ecs-lb-tg"
  port        = 80
  target_type = "alb"
  protocol    = "TCP"
  vpc_id      = var.vpc_id
}