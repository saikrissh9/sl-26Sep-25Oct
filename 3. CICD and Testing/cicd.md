
Introduction
Concepts
    Continuous Integration
    Continuous Delivery (deployable code)
    Continuous Deployment (Automated deployment to Prod)
Jenkins Installation and Configuration
Plugins
Sample Job creation
Paramerized builds --> pass variables to your jobs at runtime.
Distributed builds --> have master worker node architecture
 - distrinute the load
 - Parallel execution
 - different OS / Platforms / Environments
Pipelines --> (Pipeline-as-Code)
Build triggers
Upstream / Downstream projects



java/.net

3 windows machines

3 linux machines (forjava)

jenkins master
    - java slaves
        -node1
        -node2
        -node3
    -.netslaves
        - node4
        - node5
        - node6



Piplelines

Source Code ----> Build ---> Test ---> Deploy to Pre-Prod (Staging) ---> Deploy to Prod

CI Job ---> UAT test job ---> deploy Job ---> 

Java Build Tools
    - Ant       - build.xml
    - Maven     - pom.xml
    - Gradle    - build.xml

dev --> test --> Staging --> prod

DevOps  - Developers
        - Testers / QA
        - Sys Admin

Jenkins Job
Jenkins build








http://134.209.22.61:8080/job/sl-demojob/build?token=sl-web-token


## DevOps Certifications

    Jenkins Certified Engineer
    Ansible
    Puppet
    Chef
    Docker
    Kubernetes
    Nagios
    ELK Stack

## Cloud Based DevOps Certifications

AWS Certified DevOps Engineer
Google
Azure










References:
    https://www.thoughtworks.com/continuous-integration
    https://martinfowler.com/articles/continuousIntegration.html
    https://pkg.jenkins.io/debian-stable/
    https://www.digitalocean.com/community/tutorials/how-to-install-jenkins-on-ubuntu-18-04
    https://www.jenkins.io/doc/book/installing/#debianubuntu
    https://www.howtoforge.com/tutorial/ubuntu-jenkins-master-slave/
    https://dev.to/pencillr/jenkins-pipelines-and-their-dirty-secrets-1
    https://dev.to/pencillr/jenkins-pipelines-and-their-dirty-secrets-2
    https://dev.to/pencillr/jenkins-pipelines-and-their-dirty-secrets-3

