# Jenkins installation **tested on CentOS 7**
#/bin/sh
sudo yum install -y epel-release
sudo yum update -y
sudo yum install -y java-1.8.0-openjdk.x86_64
java -version
sudo yum install -y wget
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install -y jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins