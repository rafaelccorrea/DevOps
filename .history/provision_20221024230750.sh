#/usr/bin/bash
useradd sonar
yum install wget unzip java-11-openjdk-devel -y 
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.7.0.61563.zip
unzip sonarqube-9.7.0.61563.zip -d /opt/
mv /opt/sonarqube-9.7.0.61563.zip /opt/sonarqube
chown -R sonar:sonar /opt/sonarqube
touch /etc/systemd/system/sonar.service
echo > / etc/systemd/system/sonar.service
cat <<EOT > /etc/systemd/system/sonar.service
[Unit]
Description=Sonarqube Service
After=syslog.target network.target
[Service]
Type=forking
ExecStart=/opt/sonarqube/bin/linux-x86-64/sonar.sh start
ExecStart=/opt/sonarqube/bin/linux-x86-64/sonar.sh stop
User=sonar
Group=sonar
Restart=always
[Install]
WantedBy=multi-user.target
EOT