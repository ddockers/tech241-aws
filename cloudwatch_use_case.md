# Cloudwatch Use Cases

`cd` to `.ssh` and generate a new key pair by running:

```
ssh-keygen -t rsa -b 4096 -C "deanne.dockery@gmail.com"
```

Import key to AWS.

Create a new EC2 instance with ssh connection using new key pair.

### CPU Usage

Metrics are tracked every 5 minutes by default. They can be tracked at 1-minute intervals at extra cost.

To monitor CPU usage, the metric that needs to be monitored is **CPU utilisation**, which is measured as a percentage.

CPU utilisation can be helpful to see, for example, the usage of CPU to run a particular app.

## Dashboard

On the Cloudwatch home page, navigate to *Dashboards* and select *Create dashboard*.

**Correction**: the dashboard can have several graphs that show multiple metrics. This dashboard should **not** be given the below name, since I can have several widgets with other metrics, not just CPU utilisation.

![Imgur](https://i.imgur.com/DqMzAqw.png)

There are several visualisations to choose from. In this instance, I'll choose line graph.

![Imgur](https://i.imgur.com/gWc6gPz.png)

The region the EC2 instance is Ireland-EU-West-1. Ensure this region is selected. 

![Imgur](https://i.imgur.com/k0zpnWX.png)

Select *EC2*, then *Per-Instance Metrics*.

Type *CPU* in the filter, and select the below metric:

![Imgur](https://i.imgur.com/0WKLi61.png)

Multiple metrics can be added to the same graph if needed. 

The dashboard has been created! Please note incorrect naming of Dashboard.

![Imgur](https://i.imgur.com/qhYHOKw.png)


## Alarms

Alarms aren't just used for alerting - they can perform actions as well.

Alarms can:
- Notify specified persons
- Launch an ASG
- Change the status of the EC2 (stop, terminate, reboot, etc.)

There are three alarm states:
- <span style='color: green;'>Okay</span> - the metric is in the desired threshold
- <span style='color: red;'>Alarm</span> - the metric is outside the desired threshold and the alarm has been triggered
- <span style='color: yellow;'>Insufficient data</span> - the alarm has just started but the metric is not available, or there isn't enough data for the metric to determine the alarm state


After creating a new alarm and selecting the CPU utilisation metric, the conditions of the alarm can be specified.

![Imgur](https://i.imgur.com/9zpIF0c.png)

Above, the alarm will trigger if the maximum level of CPU usage reaches or goes above 4%.

Below, an email notification will be sent when the alarm threshold is reached.

For this to happen, an alarm topic needs to be created and named.

Here, there are also options to launch an ASG or change the state of the EC2.

![Imgur](https://i.imgur.com/hDRap7P.png)

The alarm can be named and given a description:

![Imgur](https://i.imgur.com/lS73Ty1.png)

After review, the alarm is created.

In this case, an email is sent to the specified email address requesting confirmation of subscription to the notifications. 

**The notifications will not be sent to the specified email(s) without the subscription being confirmed by the recipient.**