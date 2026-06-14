# Analisa Load Balancing Menggunakan Metode Least Connection

## Selamat Datang!

Dalam scenario ini akan dibangun sebuah arsitektur sederahana
load balancing menggunakan metode **Least Connection**.

# Arsitektur Setup

![Topologi Jaringan](images/Topolog 2.png)

## Komponen yang Digunakan

| Server | IP | Fungsi |
|---|---|---|
| Apache JMeter  | 192.168.100.9 | client / Load Testing |
| HAProxy | 192.168.100.10 | Load Balancer |
| Apache1 | 192.168.100.11 | Web Server 1 |
| Apache2 | 192.168.100.12 | Web Server 2 |
| Apache3 | 192.168.100.13 | Web Server 3 |



## Apa itu Least Connection?
HAProxy akan mengarahkan traffic ke server
yang memliki koneksi aktif paling.

## Prasyarat
Semua sudah disiapkan otomatis!
