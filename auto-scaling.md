# Auto Scaling

## What is auto scaling?
Auto scaling is the creation of more EC2 instances automatically when one or more metrics (e.g. CPU usage) reaches its threshold.

The collection of EC2 instances that are created is called an **Auto Scaling group**.

The auto scaling groups are in different data centres of the same region.

## Creating an auto scaling group
We want to create an ASG for our app so that it extra instances will run if the CPU reaches the threshold of 50%.

- Step 1 - start db vm
    - The app won't run without the db running first
    - Launch db EC2 instance.
- Step 2 - create new app vm
  - Enter the full script in user data
- Step 3 - create an AMI of the VM
  - create a copy of the disk of the VM
  - we can use the AMI to create a launch template
- Step 4 - Create launch template using the AMI
  - A **launch template** is a template of the details used to create additional EC2 instances
![Create launch template](https://i.imgur.com/cOiEpnP.png)  
  - The launch template will have the same OS as the EC2
  ![launch temp contents](https://i.imgur.com/wzHi5DF.png)
- Step 5 - Test launch template
  - Launch instance from template
- Step 6 - create ASG
- ![ASG configuration](https://i.imgur.com/Bdfg1lx.png)



The VMs are the targets of the target group
'ha-sc - High availability, scalability