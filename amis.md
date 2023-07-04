# Amazon Machine Images (AMIs)

An AMI is a pre-configured virtual machine image. 

It is used to create EC2 instances.

Multiple instances can be launched from a single AMI.

Sometimes we may need to make another copy of an existing virtual machine that has the same configuration and OS.

We can also use different AMIs to launch instances that need different configutations.

![Imgur](https://i.imgur.com/Kq0ia9j.png)

## Creating an AMI
An existing EC2 instance can be used to make an AMI. 

Navigate to the instance summary of the EC" to be cloned.

![Imgur](https://i.imgur.com/l0DeUbi.png)

Use tte regular naming convention for the image name, e.g. the EC2 name with *-ami* at the end. 

It's best to include a description, e.g. *mongo db 3.2 installed with bindIP*.

The AMI is easier to locate with a tag. The key should be *Name* and value should be the same name as the AMI.

Then click *Create.*

![Imgur](https://i.imgur.com/YtJ1sPs.png)