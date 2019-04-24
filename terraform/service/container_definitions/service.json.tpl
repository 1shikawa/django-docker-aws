[
  {
    "name": "django-service",
    "image": "090442518795.dkr.ecr.ap-northeast-1.amazonaws.com/django:latest",
    "cpu": 333,
    "memory": null,
    "memoryReservation": 600,
    "essential": true,
    "portMappings": [
      {
        "hostPort": 0,
        "protocol": "tcp",
        "containerPort": 8000
      }
    ],
    "command": ["python", "manage.py", "-collectstatic", "--noinput"],
    "environment": [
      {
        "name": "VERSION_INFO",
        "value": ""
      },
      {
        "name": "BUILD_DATE",
        "value": ""
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "django-service",
        "awslogs-region": "ap-northeast-1",
        "awslogs-stream-prefix": "service"
      }
    }
  },

    {
    "name": "nginx",
    "image": "nginx:latest",
    "cpu": 100,
    "memory": null,
    "memoryReservation": 300,
    "essential": true,
    "portMappings": [
      {
        "hostPort": 0,
        "protocol": "tcp",
        "containerPort": 80
      }
    ],
    "environment": [
      {
        "name": "VERSION_INFO",
        "value": ""
      },
      {
        "name": "BUILD_DATE",
        "value": ""
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "nginx",
        "awslogs-region": "ap-northeast-1",
        "awslogs-stream-prefix": "nginx"
      }
    }
  }
]