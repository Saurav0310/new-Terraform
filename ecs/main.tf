resource "aws_ecs_cluster" "aws-ecs-cluster" {
  name = "${var.app_name}"
  tags = {
    Name = "${var.app_name}-ecs"
  }
}

##Task Defiition
resource "aws_ecs_task_definition" "task" {
  family = "task"
  container_definitions = jsonencode([
    {
      name      = "simple-app"
      image     = var.image_id
      cpu       = var.cpu_capacity
      memory    = var.memory_capacity
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    },
  ])
}