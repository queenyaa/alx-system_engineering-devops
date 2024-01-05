# Readme of 0x0C-web_server
============================

**Summary of Nginx Web Server:**

Nginx, pronounced "engine x," is a powerful and widely-used open-source web server and reverse proxy server. It is designed to efficiently handle concurrent connections and deliver high performance, making it a popular choice for various web applications. Here's a summary of key aspects:

1. **Web Server Functionality:**
   - **HTTP Server:** Nginx primarily operates as an HTTP server, serving web content and responding to HTTP requests.
   - **Reverse Proxy:** It can act as a reverse proxy server, distributing client requests to backend servers, enhancing performance, and providing load balancing.
   - **TLS/SSL Termination:** Nginx can handle TLS/SSL termination, offloading the encryption and decryption process from backend servers.

2. **Key Features:**
   - **High Performance:** Nginx is known for its efficient use of resources, low memory footprint, and ability to handle a large number of concurrent connections.
   - **Load Balancing:** It offers built-in load balancing mechanisms to distribute incoming traffic across multiple servers, improving scalability and reliability.
   - **Reverse Proxying:** Nginx can act as a reverse proxy, forwarding requests to backend servers and caching static content to improve response times.
   - **HTTP Acceleration:** Nginx can accelerate content delivery by caching static assets and serving them directly to clients.

3. **Why Install Nginx on a Server:**
   - **Scalability:** Nginx's architecture allows it to handle a large number of simultaneous connections, making it suitable for high-traffic websites.
   - **Performance:** Its event-driven, asynchronous design ensures efficient use of system resources and quick response times.
   - **Load Balancing:** Nginx's load balancing capabilities enhance the reliability and availability of web applications by distributing incoming requests.
   - **Reverse Proxy:** Acting as a reverse proxy server helps protect backend servers from direct exposure to the internet and improves security.
   - **TLS/SSL Termination:** Nginx can manage encryption and decryption, relieving backend servers from this resource-intensive task.

4. **Use Cases:**
   - Nginx is commonly used as a standalone web server for static content.
   - It serves as a reverse proxy in front of application servers to handle dynamic content.
   - Nginx is a key component in microservices architectures and containerized environments.
   - Its load balancing capabilities are crucial for maintaining application availability and performance.

In summary, Nginx is a versatile and performant web server that plays a critical role in enhancing the speed, reliability, and security of web applications. Its adoption is widespread across a variety of use cases due to its efficiency and scalability.

## Tasks ##
=================

Task 1: Basic Nginx Installation

    The initial task focuses on installing Nginx on an Ubuntu server.
    It ensures that Nginx is listening on port 80.
    The server responds with a simple "Hello World!" message when queried at the root ("/") using a curl command.

Task 2: Custom 404 Page

    The second task involves creating a custom 404 page for Nginx.
    When a non-existent page is requested, the server returns an HTTP 404 error along with a page containing the string "Ceci n'est pas une page" ("This is not a page" in French).

Task 3: Implementing a 301 Redirect

    The third task extends the server configuration to include a 301 redirect.
    A new location block, /redirect_me, is created to redirect users to a specific YouTube video using a 301 Moved Permanently status.

Task 4: Puppet Configuration for Nginx

    Task 4 introduces Puppet, a configuration management tool, to automate the installation and configuration of Nginx on an Ubuntu machine.
    Puppet manifests are used to define resources for package installation, server configuration, and 301 redirection.

Task 5: Puppet Configuration with Hello World!

    The final Puppet task refines the previous Puppet script.
    It separates tasks into distinct resources, ensuring clarity and adherence to Puppet best practices.
    The configuration still installs Nginx, sets up a 301 redirect, and responds with a "Hello World!" message at the root.

Purpose of the Tasks:

    The tasks collectively aim to reinforce your understanding of Nginx configuration, including basic installation, custom error pages, and URL redirection.
    By using both Bash scripts and Puppet manifests, you gain experience in manual server configuration and automated configuration management, respectively.
    The tasks cover common scenarios web administrators might encounter, providing practical skills for server setup and maintenance.
