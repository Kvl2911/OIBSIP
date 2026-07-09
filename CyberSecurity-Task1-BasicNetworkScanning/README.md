# Task 1 - Basic Network Scanning with Nmap

## Oasis Infobyte Cyber Security Internship

### Objective

The objective of this task is to understand how Nmap can be used to discover open ports, identify running services, and detect the operating system of a machine. The scan was performed only on my own local Windows system for learning purposes.

---

## Tools Used

- Windows 11
- Windows PowerShell
- Nmap 7.99
- Npcap

---

## Installation Steps

1. Downloaded Nmap from the official website: https://nmap.org/download.html
2. Installed Nmap using the Windows installer.
3. Installed Npcap during the setup process.
4. Opened Windows PowerShell.
5. Verified the installation using: ```nmap --version```
The installation was successful and Nmap version 7.99 was displayed.

---

## Commands Used

### Basic Scan

```nmap 10.63.228.37```

### Service Version Detection

```nmap -sV 10.63.228.37```

### Operating System Detection

```nmap -O 10.63.228.37```

---

## Scan Summary

The scan detected four open TCP ports on my local Windows machine.

- 135 (MSRPC)
- 139 (NetBIOS Session Service)
- 445 (Microsoft-DS)
- 7070 (RealServer / SSL service)

The OS detection identified the target as Microsoft Windows 10/11.

---

## Why Network Scanning Matters

Network scanning helps administrators understand which services are running on a system. It can identify unnecessary open ports, verify expected services, and help reduce security risks by closing or securing unused services.

---

## Ethical Considerations

This scan was performed only on my own local computer. Network scanning should only be performed on systems that you own or have explicit permission to test.

---

## Learning Outcome

Through this task I learned:

- How to install and verify Nmap
- How to perform basic network scans
- How to detect running services
- How OS fingerprinting works
- How to interpret common open ports
- The importance of ethical security testing
