sudo yum update -y
sudo amazon-linux-extras enable corretto8
sudo yum install -y java-17-amazon-corretto
sudo wget -O /etc/yum.repos.d/jenkins.repo \
https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install -y jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins

