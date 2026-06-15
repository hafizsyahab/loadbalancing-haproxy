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
```

## Components

| Node | Function |
|---|---|
| apache1 | Web Server 1 |
| apache2 | Web Server 2 |
| apache3 | Web Server 3 |
| haproxy | Load Balancer |
| jmeter | Load Testing Client |

## Load Balancing Methods

### Least Connection
Least Connection is a dynamic load balancing algorithm
that checks which server has the fewest active connections
and sends the request to that server.
This method is well-suited for servers that often have
varying connection times. It also provides stable
performance on systems with unpredictable traffic.

### Round Robin
Round Robin distributes requests to each server
in a fixed rotation. After the last server receives
a request, distribution returns to the first server.
This method is simple and works best when all servers
have relatively equal capacity.

### IP Hash
IP Hash determines the target server based on
a hash of the client's IP address. Users with
the same IP will always be directed to the same server.
This method is useful for session persistence
since users won't be moved to another server
as long as their IP doesn't change.

## Why We Use Least Connection

In this scenario, we use **Least Connection** because:
- Each request may have different processing times
- Traffic load is unpredictable
- We need stable and efficient performance
