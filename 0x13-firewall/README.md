#Readme of 0x13-firewall
---

---
## Task 0
---

Task 0 involves configuring a firewall using UFW (Uncomplicated Firewall) on a server, specifically web-01. The importance of this task lies in enhancing the security of the server by restricting incoming traffic to only essential ports, thereby reducing the potential attack surface. Here's a summary of the key points:

1. **Default Deny Policy:** The task sets a default incoming policy to 'deny,' ensuring that by default, all incoming traffic is blocked. This is a security best practice as it follows the principle of least privilege, allowing only necessary traffic.

2. **Allowing Specific Ports:** By allowing incoming traffic on specific TCP ports (22 for SSH, 443 for HTTPS, and 80 for HTTP), legitimate services such as secure remote access (SSH) and web services can continue to function while unauthorized access attempts are minimized.

3. **Protection Against Unauthorized Access:** Blocking all incoming traffic except for essential ports adds an extra layer of protection against unauthorized access and potential security threats. It reduces the risk of exploitation through unused or unnecessary services.

4. **Security Best Practices:** The task aligns with security best practices by configuring a minimal set of open ports and employing a deny-by-default approach. This helps in preventing potential vulnerabilities and unauthorized access attempts.

5. **Secure Communication:** By allowing only specific ports used for secure communication, the task ensures that services like SSH, HTTPS, and HTTP can operate securely, protecting sensitive data and communication channels.

6. **Logging Enabled:** The status output indicates that logging is enabled, providing a means to monitor and review firewall activity. Logging is crucial for identifying and responding to potential security incidents.

In summary, Task 0 plays a critical role in establishing a robust security posture for the server by implementing a firewall configuration that follows security best practices, limits exposure to potential threats, and allows for secure and authorized communication.
---

---
## Task 1
---

