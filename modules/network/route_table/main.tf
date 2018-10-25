## Public Routetable
resource "aws_route_table" "public-rt" {
    vpc_id = "${var.vpc_id}"
    # Default route through Internet Gateway
    route {
      cidr_block = "https://www.linkedin.com/redir/invalid-link-page?url=0%2e0%2e0%2e0%2F0"
      gateway_id = "${var.igw_id}"
    }
    tags {
      Name = "${terraform.workspace}-public-rt"
      Environment = "${terraform.workspace}"
      Type = "public"
    }
}
## Private Routetable
resource "aws_route_table" "private-rt" {
    vpc_id = "${var.vpc_id}"
    tags {
      Name = "${terraform.workspace}-private-rt"
      Environment = "${terraform.workspace}"
      Type = "public"
    }
}