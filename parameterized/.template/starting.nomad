variable "datacenter" {
  type = string
  default = "dc1"
}

variable "driver" {
  type = string
  validation {
    condition = var.driver == "raw_exec" || var.driver == "exec"
    error_message = "Invalid value for driver; valid values are: raw_exec, exec."
  }
}

job "template" {
  datacenters = [var.datacenter]
  type = "batch"

  parameterized {
    meta_required = ["my_name"]
    meta_optional = ["my_title"]
  }

  meta {
      my_title = "diligent"
  }
  
  group "renderer" {
    task "output" {
      driver = var.driver

      config {
        command = "cat"
        args = ["local/out.txt"]
      }

      template {
        destination = "local/out.txt"
        data =<<EOT
This is my template.
EOT
      }
    }
  }
}
