# Cloudwatch Use Cases

`cd` to `.ssh` and generate a new key pair by running:

```
ssh-keygen -t rsa -b 4096 -C "deanne.dockery@gmail.com"
```

Import key to AWS.

Create a new EC2 instance with ssh connection using new key pair.



## CPU Usage

The metric that needs to be monitored is **CPU utilisation**, which is measured as a percentage.

### Dashboard

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


### Alarms

Alarms can be set fir multiple purposes, including aletring admins when a particular threshold is reached, or launching a new instance when the threshold is reached.

There are three alarm statuses:
- <span style='color: green;'>Okay</span> - the metric is in the desired threshold
- <span style='color: red;'>Alarm</span> - the metric is outside the desired threshold and the alarm has been triggered
- <span style='color: yellow;'>Insufficient data</span> - the alarm has just started but the metric is not available, or there isn't enough data for the metric to determine the alarm state