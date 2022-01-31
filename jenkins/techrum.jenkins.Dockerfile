FROM jenkins/jenkins:jdk11
USER root
RUN apt-get update && \
  apt-get install -y python3 pip && \
  pip install rbtools && \
  apt-get -y install subversion

COPY ./jenkins_home /var/jenkins_home
RUN chown jenkins /var/jenkins_home
USER jenkins