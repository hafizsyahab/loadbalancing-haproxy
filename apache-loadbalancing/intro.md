# Analisa Load Balancing Menggunakan Metode Least Connection

## Selamat Datang!

Dalam scenario ini kamu akan membangun arsitektur
load balancing menggunakan metode **Least Connection**.

## Komponen yang Digunakan

| Server | IP | Fungsi |
|---|---|---|
| apache1 | 172.30.1.1 | Web Server 1 |
| apache2 | 172.30.1.2 | Web Server 2 |
| apache3 | 172.30.1.3 | Web Server 3 |
| haproxy | 172.30.2.1 | Load Balancer |
| jmeter  | 172.30.3.1 | Load Testing |

## Apa itu Least Connection?
HAProxy akan mengarahkan traffic ke server
yang paling sedikit koneksi aktifnya.

## Prasyarat
Semua sudah disiapkan otomatis!
