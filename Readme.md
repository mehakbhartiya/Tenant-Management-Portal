# Tenant Management Portal - DevOps Project

The Tenant Management Portal is a Flask-based web application that provides an interface to manage tenant data. The project is designed with DevOps best practices, including Docker containerization, GitHub Actions for CI/CD, and Prometheus-Grafana for monitoring. Logging is set up with the ELK stack (Elasticsearch, Logstash, and Kibana) to enable real-time insights into application health and performance.

## Project Setup

1. **Dockerized Application**: The Flask app runs inside a Docker container.
2. **Continuous Integration**: CI/CD pipeline set up with GitHub Actions.
3. **Monitoring**: Application metrics are monitored using Prometheus and visualized in Grafana.
4. **Centralized Logging**: Application logs are sent to Logstash and visualized in Kibana.

## Getting Started

1. **Clone the repository**:

   ```bash
   git clone  https://github.com/mehakbhartiya/Tenant-Management-Portal.git  

2. **Build and Run the Docker Container**:
    ```bash
    docker build -t tenant-management-portal .
    docker run -d -p 5000:5000 tenant-management-portal

## CI/CD Workflow

The project uses GitHub Actions for CI/CD. A workflow file (.github/workflows/deploy.yml) automates the building and deployment of the Docker image to Docker Hub.

## Monitoring Setup

1. **Prometheus**:
Prometheus is configured to scrape metrics from multiple projects running on different ports. Update prometheus.yml for each project.    
  **Run Prometheus**:

```bash docker pull prom/prometheus
docker run -d -p 9090:9090 -v /path/to/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus
```
2. **Grafana**:
Add Prometheus as a data source in Grafana to visualize project metrics.  
**Run Grafana**:
```bash
docker pull grafana/grafana
docker run -d -p 3000:3000 grafana/grafana
```
## Logging Setup
1. **ELK Stack**:
Logstash, Elasticsearch, and Kibana are configured to centralize logs. Each project sends logs to Logstash, which are then stored in Elasticsearch and visualized in Kibana.

2. **Configure Logging**:
Each project’s Flask app is configured to send logs to Logstash using logstash_async.

## Usage
• **Access the Tenant Management Portal**: http://'<EC2-IP>':5000  
• **Access Prometheus**: http://'<EC2-IP>':9090  
• **Access Grafana**: http://<EC2-IP>:3000  
• **Access Kibana**: http://<EC2-IP>:5601

## Future Enhancements
• Add user authentication and role-based access control.
• Implement alerting based on specific thresholds in Prometheus.
• Integrate logging to capture more application-specific metrics and errors.

## Contributing
Feel free to open issues or submit pull requests for any features or improvements!
