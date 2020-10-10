## #######################
## Jenkins installation 
## tested on CentOS 7
## #######################
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


## #######################
## Jenkins installation 
## tested on Ubnutu 20.04
## ####################### 
#/bin/sh
sudo -i
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
echo "deb https://pkg.jenkins.io/debian-stable binary/" > /etc/apt/sources.list.d/jenkins.list
apt-get update
apt install -y openjdk-8-jdk
java -version
apt-get install -y jenkins
systemctl status jenkins
