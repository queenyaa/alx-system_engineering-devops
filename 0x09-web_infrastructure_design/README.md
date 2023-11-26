Readme of 0x09-web_infrastructure_design

---

# Project README

## Tasks Summary

### Task 0: One-Server Web Infrastructure

- **Objective:** Design a one-server web infrastructure for www.foobar.com.
- **Components:**
  - 1 Server (Hosting Nginx, Application Server, MySQL)
  - Domain: www.foobar.com
- **Roles:**
  - Server hosts website components.
  - Nginx handles HTTP requests.
  - Application Server executes code.
  - MySQL stores and manages data.
- **Issues:**
  - Single Point of Failure (SPOF)
  - Downtime during maintenance
  - Limited scalability

### Task 1: Three-Server Web Infrastructure

- **Objective:** Design a three-server web infrastructure for www.foobar.com.
- **Components:**
  - Load Balancer (HAproxy)
  - Web Servers (Nginx)
  - Application Server
  - Database (MySQL)
- **Specifics:**
  - Load balancing for distribution.
  - Primary-Replica Database cluster.
  - Issues: SPOF, Security (no firewall, no HTTPS), No monitoring.

### Task 3: Secured, Encrypted, and Monitored Infrastructure

- **Objective:** Design a secure, encrypted, and monitored three-server web infrastructure.
- **Components:**
  - Load Balancer Cluster (HAproxy)
  - Web Server (Nginx)
  - Application Server
  - Database (MySQL)
  - Firewalls, SSL Certificate, Monitoring Clients
- **Specifics:**
  - HTTPS for secure communication.
  - Monitoring for proactive issue detection.
- **Issues:**
  - SSL termination at the load balancer.
  - Single MySQL server for writes.
  - Identical components on all servers.

---

## Important Notes:

- **Terminology:**
  - SPOF: Single Point of Failure
  - HAproxy: High-Availability Proxy

- **Recommendations:**
  - Address SSL termination issues.
  - Implement a robust MySQL HA solution.
  - Diversify components for fault tolerance.

- **Readme Guidelines:**
  - Ensure each task is covered and explained.
  - Include specifics about components, roles, and issues.
  - Provide recommendations for improvement.

---
