job "template" {
  datacenters = ["dc1"]
  type = "batch"

  parameterized {
 
  }

  group "renderer" {
    task "output" {
      driver = "«driver»"

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
