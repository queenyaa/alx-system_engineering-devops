# Readme of 0x0F-load_balancer
==============================

## Task 0
---
Task 0 is the initial step in a larger project where asked to improve the web stack by adding redundancy to the web servers. In this task, the focus is on configuring the second web server (`web-02`) to be identical to the first one (`web-01`). The key aspect is to automate this configuration using a Bash script.

The specific requirements of Task 0 are:

1. **Configure Nginx:** Set up Nginx on `web-02` so that its HTTP response contains a custom header (`X-Served-By`). This header will help track which web server is answering HTTP requests.

2. **Automation with Bash Script:** Write a Bash script (`0-custom_http_response_header`) that configures a brand new Ubuntu machine to meet the requirements mentioned above. The script should be executable and should pass Shellcheck without any errors.

3. **Ignore Shellcheck Warning:** The script is allowed to ignore a specific Shellcheck warning (`SC2154`) related to a variable being referenced but not assigned.

The importance of Task 0 lies in setting the foundation for the redundancy and load balancing tasks that follow. By automating the configuration of the second web server, you ensure consistency in the setup, reduce the likelihood of human errors, and make it easier to scale the infrastructure. Additionally, the custom header added to the HTTP response becomes crucial in later tasks when load balancing is introduced, as it helps in tracking which web server is handling requests.

In summary, Task 0 is important for establishing a consistent and automated setup of web servers, which is a prerequisite for building a redundant and scalable web stack.
---

---
## Task 1
---
Task 1 is important because it involves the installation and configuration of HAProxy on the load balancer (`lb-01`) server. HAProxy is a powerful and widely-used load balancing solution that distributes incoming network traffic across multiple servers to ensure high availability and reliability.

The key objectives of Task 1 are:

1. **Load Balancing:** Configure HAProxy to distribute traffic evenly (using a round-robin algorithm) between the two web servers (`web-01` and `web-02`). This load balancing approach helps to distribute the incoming requests and prevents any single server from being overwhelmed, thereby improving performance and resource utilization.

2. **Init Script Management:** Ensure that HAProxy can be managed using an init script. This is important for the ease of starting, stopping, and restarting the HAProxy service. In the provided script, `service haproxy restart` is used for this purpose.

3. **Hostname Configuration:** Confirm that the web servers (`web-01` and `web-02`) have the correct hostnames: `[STUDENT_ID]-web-01` and `[STUDENT_ID]-web-02`. This is important for proper server identification and tracking, especially when logging custom headers or monitoring server performance.

4. **Automation:** The provided Bash script automates the installation and configuration process, making it easy to replicate the setup on a new Ubuntu machine. Automation is crucial for ensuring consistency across servers and reducing the chance of configuration errors.

5. **Round-Robin Load Balancing:** The use of a round-robin algorithm in the HAProxy configuration ensures that requests are distributed in a cyclic order, allowing each server to handle an equal share of the traffic. This promotes a balanced distribution of the workload.

In summary, Task 1 lays the foundation for a robust and scalable web stack by introducing load balancing with HAProxy. The load balancer ensures that incoming requests are efficiently distributed across multiple web servers, improving the overall performance, availability, and reliability of the web application. The automation aspect also contributes to consistent and repeatable deployment practices.
---

---
## Task 2
---

