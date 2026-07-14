# Common Network Security Threats
**Oasis Infobyte Cyber Security Internship – Task 4**

## Introduction
Network security has become one of the most important aspects of modern computing because businesses, governments, and individuals rely on connected systems every day. Cyber attackers continuously search for weaknesses in networks to disrupt services, steal confidential information, or gain unauthorized access. Understanding common network threats helps administrators implement preventive measures before an attack occurs. This report explains four common network attacks, their real-world impact, and practical mitigation strategies.

## Denial of Service (DoS) and Distributed Denial of Service (DDoS)
### Explanation
DoS attacks overwhelm a server with excessive requests from a single source, while DDoS attacks use thousands of compromised devices (botnets) to flood the target. The objective is to exhaust bandwidth, CPU, or memory so legitimate users cannot access the service.

### Real-world Example
GitHub experienced a massive DDoS attack in February 2018 peaking at about 1.35 Tbps, temporarily affecting availability before mitigation services restored operations.

### Impact
- Website downtime
- Financial losses
- Reduced customer trust

### Mitigation Strategies
1. Deploy DDoS protection/CDNs.
1. Configure rate limiting and firewalls.
1. Continuously monitor network traffic and use IDS/IPS.

## Man-in-the-Middle (MITM) Attack
### Explanation
A MITM attack occurs when an attacker secretly intercepts communication between two parties. The attacker may read, modify, or steal transmitted information without either side noticing.

### Real-world Example
Public Wi-Fi attacks have demonstrated how attackers can intercept unencrypted traffic and steal login credentials.

### Impact
- Credential theft
- Data manipulation
- Privacy violations

### Mitigation Strategies
1. Use HTTPS and TLS.
1. Use VPNs on public networks.
1. Enable Multi-Factor Authentication (MFA).

## IP Spoofing
### Explanation
IP spoofing is the process of forging the source IP address in network packets to hide the attacker's identity or impersonate another system.

### Real-world Example
Many reflection/amplification DDoS attacks rely on spoofed IP addresses to hide the attack source.

### Impact
- Identity masking
- Bypassing simple filters
- Supporting larger attacks

### Mitigation Strategies
1. Implement ingress/egress filtering.
1. Use packet filtering firewalls.
1. Deploy authentication protocols where possible.

## DNS Poisoning / DNS Spoofing
### Explanation
DNS spoofing manipulates DNS responses so users are redirected to fraudulent websites instead of legitimate ones.

### Real-world Example
In 2018 attackers compromised DNS records of several organizations, redirecting visitors to malicious websites to steal credentials.

### Impact
- Credential theft
- Malware delivery
- Loss of user trust

### Mitigation Strategies
1. Use DNSSEC.
1. Use trusted DNS resolvers.
1. Monitor DNS records and enable HTTPS certificate validation.

## Comparison Table
| Threat | Attack Vector | Who is at Risk | Difficulty to Execute | Ease of Mitigation |
|---|---|---|---|---|
| DoS | Single source flooding | Websites, servers | Medium | Moderate |
| DDoS | Botnet traffic | Enterprises, cloud services | High | Moderate |
| MITM | Intercepted communication | Public Wi-Fi users, organizations | Medium | High with encryption |
| IP Spoofing | Forged IP packets | Network infrastructure | Medium | Moderate |
| DNS Spoofing | Fake DNS responses | All internet users | Medium | High with DNSSEC |

## Conclusion
### Three Key Takeaways for a Network Administrator

1. Regular monitoring and timely patching reduce the chances of successful network attacks.
2. Layered security controls such as firewalls, encryption, DNSSEC, VPNs, and intrusion detection provide stronger protection than relying on a single solution.
3. User awareness and secure configuration are as important as technical security controls because many attacks exploit human mistakes.

## References
- NIST Cybersecurity Framework – https://www.nist.gov/cyberframework
- CISA Cybersecurity Resources – https://www.cisa.gov
- OWASP Foundation – https://owasp.org
- MITRE ATT&CK – https://attack.mitre.org
- Cisco Networking Academy – https://www.netacad.com
