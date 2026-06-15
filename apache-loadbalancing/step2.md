# Install Apache Web Server

In this step, we will install Apache 
on all 3 web servers.

## Run on apache1, apache2, and apache3

Update package list:
```bash
apt-get update -y
```

Install Apache:
```bash
apt-get install -y apache2
```

Start Apache:
```bash
systemctl start apache2
```

Enable Apache on boot:
```bash
systemctl enable apache2
```

## Verify Apache is Running
```bash
systemctl status apache2
```

You should see **active (running)**!
