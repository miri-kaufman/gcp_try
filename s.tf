#yor:skip
resource "aws_subnet" "eks_subnet" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.10.10.10/24"
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true
  tags = {
    Name                                    = "${local.prefix}-eks-subnet-1"
    "kubernetes.io/cluster/${local.prefix}" = "shared"
    yor_name                                = "eks_subnet"
    yor_trace                               = "615a0786-446a-48af-9e4b-b11f80695f7b"
    module_yor_name                         = "eks_subnet"
    module_yor_trace                        = "36c3c5e5-ecb6-4abb-9f17-383af195e5f4"
  }
}