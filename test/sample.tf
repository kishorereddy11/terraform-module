variable "xyz" {
  default = {
    app1 ={
        name="cart"
    }
    app2 = {
        name ="catalogue"
    }
  }
}

output "test" {
  value = {for k,v in var.xyz : k => v.name}
}