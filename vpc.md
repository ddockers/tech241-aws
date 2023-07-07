# Virtual Private Cloud

A Virtual Private Cloud (VPC) is a public cloud offering that lets an enterprise establish its own private cloud-like computing environment on shared public cloud infrastructure.

## Create VPC
  - Navigate to VPC in EC2
![VPC dashboard](https://i.imgur.com/S060QEy.png)
## Create IGW
  - Navigate to the VPC settings of the VPC just created
  - Go to *Internet gateways* and select *Create internet gateway*
![Create IGW](https://i.imgur.com/c5CNFB3.png)
## Attach to VPC
## Create subnets - public and private
  - Create the public subnet
![Public Subnet](https://i.imgur.com/2lCYzA2.png)
    - Add a new subnet. This will be the private subnet
![Private subnet](https://i.imgur.com/rqHIITV.png)
## Set up public route table
  - Create the public route table
![Imgur](https://i.imgur.com/0qmnwDN.png)
    - When the route table is created, we can see the subnets available to connect to
![Imgur](https://i.imgur.com/eVAeZvx.png)
## Connect route table to internet gateway
![Imgur](https://i.imgur.com/ACaw6aM.png)
## Link IGW to public subnet using public route table