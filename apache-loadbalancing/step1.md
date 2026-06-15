# How Least Connection Works

When a request comes in, HAProxy checks 
active connections on each server:

```
Client Request
      ↓
   HAProxy
   ↓     ↓     ↓
apache1 apache2 apache3
2 conn  1 conn  3 conn
      ↓
HAProxy picks apache2
(least active connections!)
```

## Why Least Connection?

| Method | How it Works |
|---|---|
| Round Robin | Requests distributed in rotation |
| Least Connection | Request sent to server with fewest active connections |
| IP Hash | Requests from same IP always go to same server |

Least Connection is more efficient because
it considers the actual load on each server,
not just the number of requests!

## Network Configuration

| Platform | How IP is Set |
|---|---|
| VM (thesis) | Manual via Netplan |
| Killercoda | Automatic per node |
| AWS | VPC / Elastic IP |
| Azure | Virtual Network |
| GCP | VPC Network |

## On Real VM
```bash
sudo nano /etc/netplan/01-network-manager-all.yaml
sudo netplan apply
```

## On Killercoda
No configuration needed!
Nodes connect to each other automatically.
