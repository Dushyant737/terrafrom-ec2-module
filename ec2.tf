resource "aws_instance" "dkec2" {
    ami = data.aws_ami.dkami.image_id
    key_name = "iam_dushyant_vsf_ec2_key_pairs"
    subnet_id = data.terraform_remote_state.vpc.outputs.subnet_id
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.dksg_2.id]
  
}
