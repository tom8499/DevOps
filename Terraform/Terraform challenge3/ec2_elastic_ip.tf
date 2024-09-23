resource "aws_eip" "eip" {
    vpc = true
    instance = aws_instance.citadel.id
    provisioner "local-exec" {
        command = "echo ${self.public.dns} >> /root/citadel_public_dns.txt"
      
    }
  
}