variable "region" {
  default = "ap-south-1"
}
variable "project" {
  default = "todo-app"
}

variable "ami_id" {
  default = "ami-02d26659fd82cf299"
  description = "AMI ID for EC2"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "git_repo" {
  default     = "https://github.com/akshu-r/flask-todo.git"
  description = "Git repo of your Flask app"
}


variable "domain_name" {
  description = "Domain name for the app"
  default     = "todo.example.com"
}
