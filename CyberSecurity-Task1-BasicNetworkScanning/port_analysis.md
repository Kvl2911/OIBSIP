# Port Analysis

## Port 135 - MSRPC

**Service:** Microsoft Remote Procedure Call (MSRPC)

**Purpose:**
This service allows Windows applications and system components to communicate with each other across the network.

**Security Risk:**
If exposed to untrusted networks, attackers may attempt to exploit vulnerabilities or gather information about the system.

**Recommendation:**
Keep Windows updated and restrict access using the firewall.

---

## Port 139 - NetBIOS Session Service

**Service:** NetBIOS Session Service

**Purpose:**
Used for file and printer sharing in older Windows networking environments.

**Security Risk:**
NetBIOS may expose shared resources and system information if left accessible.

**Recommendation:**
Disable NetBIOS if it is not required and allow access only within trusted networks.

---

## Port 445 - Microsoft-DS

**Service:** Microsoft Directory Services (SMB)

**Purpose:**
Used for Windows file sharing and network communication.

**Security Risk:**
SMB has been targeted by several malware attacks, including ransomware that exploited outdated SMB implementations.

**Recommendation:**
Keep SMB updated, disable SMBv1 if enabled, and avoid exposing this port to the Internet.

---

## Port 7070 - RealServer (Detected)

**Service:** RealServer / SSL Service (Nmap Detection)

**Purpose:**
Nmap identified a service on port 7070. The exact application could not be confirmed, but this port is commonly used by media streaming or custom web applications.

**Security Risk:**
Unknown or unnecessary services should be reviewed because outdated software or misconfigurations may introduce security vulnerabilities.

**Recommendation:**
Verify which application is using this port and disable the service if it is not required.
