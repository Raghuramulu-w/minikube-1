module "minikube" {
  source = "github.com/scholzj/terraform-aws-minikube"

  aws_region    = "us-east-1"
  cluster_name  = "roboshop-1"
  aws_instance_type = "t3.medium"
  ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDDqQmGFyh+/VzGfj2CqTBdFzexjIndpfkE45ObHUXn2/tU9pjQEGYy4nOiUmc2mHH2YcU3CJu7JlA8S6j6bHZONCVNMM4Kr2PcwPTZiTzKhx4vpOqMJd+cpuRjDWKq7zMq7q9CFsK9nS2VrJZFGrAlkCPTQ7gvicgf4DX9xZiJqvcyMyzeEB1UIm9UAy7Arn6DwA86TdoYtIe54yjsg+hs6WVYHaLdjfL/Z+GAvcZZ4UXDMSTf6Xgw76/z7wS1wacZm3xQ4R7H/Dw3YNOIJZCqavqVjYNgi3M/zFDVgLRGQysBONew6z5LcHlIzEEEuaBOspdZtrwPJyn9j/QU/WbnLN33zeKdAHePJ5lwR7y1BQzOWOdhNGcU23pmRP1qZwshPzhaLFuZsWBuXDNjPbTZn5e28i7zI358zRgE82hYOdzwraBZPFu/irqs84Ce+sxDJY/DMbfFsJaO566aSxr3hc5Qjnv/nmQG90R0H9l1TcBDI/lLk2sQhL3zUiEGWJM= DELL@DESKTOP-GBRVKFP"

  aws_subnet_id = "subnet-0efb935738860f410" #replace your default subnet id
  # by default centos7 will be used
  #ami_image_id = "ami-b81dbfc5"
  hosted_zone = "daws76s.online"
  hosted_zone_private = false

  tags = {
    Application = "Minikube"
  }

  addons = [
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/storage-class.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/heapster.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/dashboard.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/external-dns.yaml"
  ]
}