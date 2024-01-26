FROM jenkins/jenkins:latest

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml

COPY plugins.sh /usr/share/jenkins/ref/plugins.sh
USER root
RUN chmod +x /usr/share/jenkins/ref/plugins.sh
USER jenkins
RUN /usr/share/jenkins/ref/plugins.sh

COPY casc.yaml /var/jenkins_home/casc.yaml
