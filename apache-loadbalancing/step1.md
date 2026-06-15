# Architecture Overview

## What Are We Building?

In this scenario, we will build a load balancing 
architecture with **5 nodes**:

```
Client (JMeter)
      ↓
   HAProxy (Load Balancer)
   ↓        ↓        ↓
apache1   apache2   apache3
(Web Server 1) (Web Server 2) (Web Server 3)
```

## Components

| Node | Function |
|---|---|
| apache1 | Web Server 1 |
| apache2 | Web Server 2 |
| apache3 | Web Server 3 |
| haproxy | Load Balancer |
| jmeter | Load Testing Client |

## How Least Connection Works

HAProxy checks active connections on each server
and sends new requests to the server with 
the **fewest active connections**:

```
New Request comes in...

apache1 → 5 active connections
apache2 → 2 active connections  ← picked!
apache3 → 4 active connections
```

## Why Least Connection?

| Method | Description |
|---|---|
| Round Robin | Requests distributed in rotation |
| Least Connection | Request goes to least busy server |
| IP Hash | Same IP always goes to same server |

Least Connection is best when requests 
have **different processing times**!
