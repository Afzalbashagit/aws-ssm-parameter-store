resource "aws_ssm_parameter" "parameter" {
  count=length(var.parameters)
  type  = "SecureString"
  key_id = "2f11dea3-eec7-41ec-9c20-8089258d17c8"
  name= var.parameters[count.index].name
  value= var.parameters[count.index].value
}