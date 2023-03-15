#PRIVATE SUBNETS
resource "aws_subnet" "private-subnet-1" {
  vpc_id     = "vpc-0de2bfe0f5fc540e0"
  map_public_ip_on_launch = false
  cidr_block = "10.0.1.0/24"
#  nat_gateway_id = "nat-07863fc48f5b99110"

  tags = {
    Name = "private-subent-1"
  }
}


# Private route table creation

resource "aws_route_table" "route-private" {
  vpc_id = "vpc-0de2bfe0f5fc540e0"

  route {
    cidr_block = "10.0.0.0/16"
    nat_gateway_id = "nat-07863fc48f5b99110"
  }

  tags = {
    Name = "private-route-table"
  }
}

# association of private route table to private subnet

resource "aws_route_table_association" "private-subnet-1" {
  subnet_id      = "${aws_subnet.private-subnet-1.id}"
  route_table_id = "${aws_route_table.route-private.id}"
}

#aws_vpc.r-vpc.id
