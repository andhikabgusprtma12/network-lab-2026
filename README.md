# Network Lab 2026

A Public lab to demonstrate operational networking skills.

## Goal

Build a reproducible, documented virtual network that can be monitored and troubleshot.

## Day 01 - 01-25-2026
- Initialized repository.
- Lesson: To start taking real action and reduce procrastination.

## Day 02 - 01-27-2026
- Deployed Mikrotik CHR in VirtualBox (CLI only).
- Configured static IP on ether1.
- Verified host-to-VM connectivity.
- Expored config as 'configs/chr-day2-basic.rsc'
- Lesson: If your computer's IP is 192.168.34.10, keep the network ID (192.168.34) but change the host ID (.10)

## Day 03 - 02-01-2026
- Deployed Debian CLI VM as network client.
- Configured static IP and gateway to Mikrotik.
- Verified connectivity via ping.
- Saved client config as 'configs/debian-client-enp0s8.conf'.
- Lesson: Don't forget to watch the tutorial before installing Debian on VirtualBox to avoid any problems.

## Day 04 - 02-02-2026
- Added second Debian VM as "Server" on separate subnet (192.168.66.0/24).
- Configured Mikrotik ether2 as gateway for server subnet.
- Verified inter-subnet communication via ping form client to ser ver.
- Saved configs: 'configs/chr-day04-inter-subnet.rsc', 'configs/debian-server-enp0s3.conf'.
- Lesson: Although the subnets differ, they stay connected if the Mikrotik has the IP routes.
