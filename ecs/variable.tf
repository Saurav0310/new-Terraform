variable "app_name" {
  default = "demo-app"
}
##Task
variable "image_id" {
  default = "saurav46/my-app1:dockerhub"
}

variable "cpu_capacity" {
  default = "1024"
}

variable "memory_capacity" {
  default = "2048"
}