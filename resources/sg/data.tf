## getting my ip_address

data "http" "my_ip" {
  url = http://ipv4.icanhazip.com
}

# we can use in cidr_blocks = ["${chomp(data.http.my_ip)}/32"] ----> this will store the ip address in cidr_blocks