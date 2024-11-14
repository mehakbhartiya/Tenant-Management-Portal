# Tenant Management Portal - DevOps Project

This project demonstrates DevOps skills by deploying a Flask application in Docker and setting up monitoring and logging with Prometheus, Grafana, and the ELK Stack.

## Project Setup

1. **Dockerized Application**: The Flask app runs inside a Docker container.
2. **Continuous Integration**: CI/CD pipeline set up with GitHub Actions.
3. **Monitoring**: Application metrics are monitored using Prometheus and visualized in Grafana.
4. **Centralized Logging**: Application logs are sent to Logstash and visualized in Kibana.

## Getting Started

1. **Clone the repository**:

   ```bash
   git clone https://github.com/mehakbhartiya/Tenant-Management-Portal.git

2. **Build and Run the Docker Container**:
    ```bash
    docker build -t tenant-management-portal .
    docker run -d -p 5000:5000 tenant-management-portal


## Monitoring Setup

1. **Prometheus**:
Prometheus is configured to scrape metrics from multiple projects running on different ports. Update prometheus.yml for each project.

2. **Grafana**:
Add Prometheus as a data source in Grafana to visualize project metrics.


## Logging Setup
1. **ELK Stack**:
Logstash, Elasticsearch, and Kibana are configured to centralize logs. Each project sends logs to Logstash, which are then stored in Elasticsearch and visualized in Kibana.

2. **Configure Logging**:
Each project’s Flask app is configured to send logs to Logstash using logstash_async.


