## Network Configuration Comparison

| Platform | IP Configuration |
|---|---|
| VM (VirtualBox/VMware) | Manual via Netplan |
| Killercoda | Automatic per node |
| AWS | Elastic IP / VPC |
| Azure | Virtual Network (VNet) |
| GCP | VPC Network |

## On Real VM (VirtualBox)
Static IP is configured manually using netplan:

sudo nano /etc/netplan/01-network-manager-all.yaml

Then apply:

sudo netplan apply

## On AWS
IP is assigned automatically via VPC
or manually set via Elastic IP in console.

## On This Killercoda Scenario
No IP configuration needed!
Each node already has its own IP:

| Node | Auto-assigned |
|---|---|
| apache1 | auto |
| apache2 | auto |
| apache3 | auto |
| haproxy | auto |
| jmeter  | auto |
