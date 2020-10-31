

**Triad of services**

ELB + CloudWatch + ASG

1. ELB --> Load Balancer
2. CloudWatch --> Monitoring service
3. ASG --> Depending upon load (and certain pre defined thresholds) it will create / termiate EC2 instances

**Scaling Types**
    - Horizontal Scaling | Scaling in/Out
    - Vertical Scaling | Scaling up/down


**AWS Trusted Advisor**


E - ElasticSearch
L - Logstash
K - Kibana
Beats - Agent

Centralized Log Managment tools:
    - Logstash
    - LogRhythm
    - Qradar

Visualization
    - Kibana
    - Grafana
    - AWS Quicksight

APM - Application performance Management tools
    - New Relic
    - App Dynamics
    - AWS Xray

============================
# Installation/Configuration
============================

    Nagios Core => OpenSource (Free version)
    Nagios XI   => Enterprise (Paid Version)

    sudo htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin

    cfg_file=/usr/local/nagios/etc/objects/dbnodes.cfg
    cfg_dir=/usr/local/nagios/etc/servers

## Installation Script for Nagios XI:

    curl https://assets.nagios.com/downloads/nagiosxi/install.sh | sh

## Home Folder

    /usr/local/nagios/etc

    cfg_file=/usr/local/nagios/etc/objects/commands.cfg

    cfg_dir=/usr/local/nagios/etc/servers

    Verify Nagios Configuration before service restart:

    /usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg

============================
# Nagios Object Definitions
============================

define host {
      use                     generic-host
      host_name               sl-master
      alias                   slmaster
      address                 206.189.208.63
      max_check_attempts      5
      check_period            24x7
      notification_interval   30
      notification_period     24x7
}

define service {
      use                   generic-service
      host_name             sl-master
      service_description   PING
      check_command         check_ping!100.0,20%!500.0,60%
}

define service {
      use                   generic-service
      host_name             sl-master
      service_description   SSH
      check_command         check_ssh
}

============================
# References
============================

https://prometheus.io/
https://aws.amazon.com/architecture/well-architected/?
https://assets.nagios.com/downloads/nagioscore/docs/nagioscore/4/en/configobject.html
https://assets.nagios.com/downloads/nagioscore/docs/nagioscore/4/en/objectdefinitions.html
https://logz.io/learn/complete-guide-elk-stack/