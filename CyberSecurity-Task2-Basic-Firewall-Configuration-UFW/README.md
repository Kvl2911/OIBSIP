# Basic Firewall Configuration with UFW

## Objective

This project demonstrates how to configure the Uncomplicated Firewall (UFW) on Ubuntu 24.04.4 LTS. The firewall is configured to allow secure services while blocking unnecessary or insecure network traffic.

## Environment

- Operating System: Ubuntu 24.04.4 LTS
- Virtual Machine: Oracle VirtualBox
- Firewall: UFW
- Testing Tool: Nmap

## Firewall Rules Applied

### 1. Enable the Firewall

```bash
sudo ufw enable
```

Enables the UFW firewall and starts it automatically on system startup.

---

### 2. Allow SSH

```bash
sudo ufw allow ssh
```

Allows incoming SSH connections on port 22 for secure remote administration.

---

### 3. Deny HTTP

```bash
sudo ufw deny http
```

Blocks incoming HTTP traffic on port 80.

---

### 4. Allow HTTPS

```bash
sudo ufw allow https
```

Allows secure HTTPS traffic on port 443.

---

### 5. Deny Telnet

```bash
sudo ufw deny 23
```

Blocks Telnet traffic on port 23 because Telnet is an insecure protocol that sends data without encryption.

---

### 6. Verify Firewall Status

```bash
sudo ufw status verbose
```

Displays all active firewall rules and confirms that the firewall is enabled.

## Testing

The firewall configuration was verified using the following command:

```bash
sudo ufw status verbose
```

An Nmap scan was also performed to inspect the configured ports.

```bash
sudo nmap -Pn -p 22,23,80,443 localhost
```

The firewall rules were successfully applied and verified using the UFW status output and the Nmap scan results.

### Testing Method

The firewall configuration was verified using the `sudo ufw status verbose` command to confirm that all firewall rules were active. An additional Nmap scan was performed using:

```bash
sudo nmap -Pn -p 22,23,80,443 localhost
```

The scan was used to inspect the configured ports after applying the firewall rules. The UFW configuration and Nmap output together were used to verify that the firewall rules had been successfully applied.

## Why These Rules Were Chosen

- **SSH (Port 22)** was allowed to permit secure remote administration.
- **HTTP (Port 80)** was blocked to prevent unsecured web traffic.
- **HTTPS (Port 443)** was allowed because it provides encrypted and secure web communication.
- **Telnet (Port 23)** was blocked because it is an outdated protocol that transmits data in plain text and is considered insecure.

---

## Automation Script

This project includes the shell script:

```text
ufw_configuration.sh
```

The script automatically:

- Enables the UFW firewall
- Allows SSH
- Blocks HTTP
- Allows HTTPS
- Blocks Telnet (Port 23)
- Displays the firewall status

---

## Conclusion

This project successfully demonstrates the basic configuration of the Uncomplicated Firewall (UFW) on Ubuntu 24.04.4 LTS. Firewall rules were configured, verified, documented, and automated using a shell script.

---

## References

- Ubuntu Community Documentation – UFW: https://help.ubuntu.com/community/UFW
- Nmap Official Documentation: https://nmap.org/book/
