# --- README.md ---

# IPMI-Tunnel

**This script establishes an SSH tunnel through a bastion host to forward specific ports to an IPMI host.** 

This allows you to manage IPMI-enabled servers remotely even if they are behind firewalls or on inaccessible networks.

**Key Features:**

* **Port Forwarding:** Forwards a configurable list of ports to the IPMI host.
* **Bastion Host Support:** Enables secure access to the IPMI host through a secure jump server.
* **Loopback Interface:** Utilizes a loopback interface alias for local port binding.

**Usage:**

1. **Clone the repository:**
   ```bash
   git clone <repository_url>
