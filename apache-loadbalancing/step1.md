# Architecture Overview

In this scenario we have 5 nodes:
- **apache1, apache2, apache3** → Web Servers
- **haproxy** → Load Balancer
- **jmeter** → Load Testing Client

## How Least Connection Works

```
Client Request
      ↓
   HAProxy
   ↓  ↓  ↓
 apache1 apache2 apache3
(2 conn)(1 conn)(3 conn)
      ↓
HAProxy picks apache2
(least connections!)
```

## Network Configuration

| Platform | How IP is Set |
|---|---|
| VM (thesis) | Manual via Netplan |
| Killercoda | Auto per node |
| AWS | VPC / Elastic IP |
| Azure | VNet |
| GCP | VPC Network |

## On Real VM
```bash
sudo nano /etc/netplan/01-network-manager-all.yaml
sudo netplan apply
```

## On Killercoda
No configuration needed — nodes connect automatically!
