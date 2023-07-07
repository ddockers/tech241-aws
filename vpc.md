# Virtual Private Cloud

A Virtual Private Cloud (VPC) is a public cloud offering that lets an enterprise establish its own private cloud-like computing environment on shared public cloud infrastructure.

- Create VPC
  - Navigate to VPC in EC2
![Imgur](https://i.imgur.com/cOiEpnP.png)
- Create IGW
- Attach to VPC
- Create subnets - public and private
  - Create the public subnet
![Public Subnet](https://i.imgur.com/2lCYzA2.png)
- Set up public route table
  - Create the public route table
![Imgur](https://i.imgur.com/0qmnwDN.png)
  - Connect route table to internet gateway
![Imgur](https://i.imgur.com/ACaw6aM.png)
- Link IGW to public subnet using public route table