# Load Balancing Analysis Using Least Connection Method

## Welcome!
In this scenario, we will build a simple load balancing
architecture using the **Least Connection** method.

# Architecture Setup

[Network Topology](Topologi.png)

## Components Used

| Server | IP | Function |
|---|---|---|
| Apache JMeter | 192.168.100.9 | Client / Load Testing |
| HAProxy | 192.168.100.10 | Load Balancer |
| Apache1 | 192.168.100.11 | Web Server 1 |
| Apache2 | 192.168.100.12 | Web Server 2 |
| Apache3 | 192.168.100.13 | Web Server 3 |

## What is Least Connection?
HAProxy will direct traffic to the server
that has the **least number of active connections**.

## Prerequisites
- Basic knowledge of Linux commands
- Basic understanding of web servers
- No installation required — everything is set up automatically!
