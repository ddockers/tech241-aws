# Intro to AWS

## Differences between AWS and Azure
- Resource groups are not necessary in AWS. In Azure, **everything** goes in a resource group.
- Public IP addresses in AWS are dynamic, so it changes every time the VM restarts.
- Terminology - intead of creating a virtual machine, we *launch an instance* on AWS. A virtual machine in AWS is called **EC2**.






## Launching an Instance
- Ensure the region is set to **Eurpoe (Ireland) eu-west-1**
- Select *EC2* and *Launch an instance*.
- Use the regular naming convention to name the machine.
  
![Imgur](https://i.imgur.com/7nYWMsc.png)

- We stil want to use Ubuntu 18.04 LTS, but it is not in the *Quick Start* menu. Selecr *Browse more AMIs*
- Filter by Ubuntu and search for 18.04 lts 1e9
![Imgur](https://i.imgur.com/onqY5ML.png)

- The *Instance type* is **t2.micro**.

In Azure we generated our own key pair usiing GitBash commands. In AWS, we're all using the same key.
- In *Key pair (login)* search for tech241 in the dropdown.
![Imgur](https://i.imgur.com/cwgCC8G.png)

A security group will need to be created, and We'll be using the same security group for all VMs. 
- Ensure *SSH* and *HTTP* are ticked, and click *Edit*.
A new security group rule needs to be added to that the app can accept inbound for reverse proxy.
- Enter the name of the security group using the regular naming convention, and *Add security group rule* to add the new rule.
![Imgur](https://i.imgur.com/c0x2taN.png)

This new rule will be saved for all new machines we create.

When an instance is launched, the machine automatically runs.

Clicking on the machine gives you an option to go to the *Connect* page. 

The path to the key will need to be added since it's not automatically listed. `~/.ssh` is added to the start of the key path. This is so that we don't have to ssh in from the folder - we can do it from anywhere.

The user is ubuntu by default.

When logging in again, we can't use the up arrow to connect again. The IP address will have changed, so the new command will need to be copied from AWS. Remember to include the path, or `cd` into the `.ssh` folder first.