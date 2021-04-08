job "http-echo" {
  datacenters = ["dc1"]
  namespace = "default"
  type = "service"

  group "http-echo" {
    count = 1
    network {
      port "http" { to = 8080 }
    }
    task "web" {
      driver = "docker"
      config {
        network_mode = "host"
        image = "hashicorp/http-echo"
        args = ["-listen=:8080", "-text=`hello world`"]
        ports = ["http"]
      }
    }
  }
}