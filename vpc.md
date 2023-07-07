# Virtual Private Cloud

A Virtual Private Cloud (VPC) is a public cloud offering that lets an enterprise establish its own private cloud-like computing environment on shared public cloud infrastructure.


![VPC diagram](https://i.imgur.com/HDwYIZf.png)
If someone from outside the network wants to access our app VM, they will have to go through the internet gateway.

They will be using the puplic IP address, since the app VM is in the public subnet.

The router consults the public route table to see if the route allowing traffic from the internet gateway to the public subnet exists.

The traffic will still need to go through the app VM network security group to access the app.

The private IP address of the DB VM is in the environment variable of the app VM. This is how the app VM communicates with the DB VM. 

Using the private IP address, the traffic goes to the router, the default routing table allows internal communication. The traffic would still need to go through the DB VM's NSG with port 27017 allowed.



## Create VPC
  - Navigate to VPC in EC2
  - Select *Create VPC*
![VPC dashboard](https://i.imgur.com/S060QEy.png)   
    - Select *VPC only*
    - The CIDP block, as seen on the diagram above, is 10.0.0.0/16
![VPC settings](https://i.imgur.com/dTpoqfH.png)
## Create Internet Gateway
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

Once it's all set up, we can see the resource map. It shows the subnets connected to the route tables, and which ones are connected to the network.
![Imgur](https://i.imgur.com/MIABFMQ.png)

![Imgur](https://i.imgur.com/0xFzHlr.png)

![Imgur](https://i.imgur.com/3WLFVfR.png)