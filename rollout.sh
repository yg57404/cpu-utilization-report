#!/bin/bash

# Set your deployment configuration
NAMESPACE="default"
DEPLOYMENT_NAME="stage-b2c-feedback-srv"

# Check the deployment status
deployment_status=$(kubectl rollout status deployment/$DEPLOYMENT_NAME --timeout=120s -n $NAMESPACE)

if [[ $deployment_status == *"successfully rolled out"* ]]; then
  echo "Deployment was successful!"
else
  echo "Deployment failed. Rolling back..."

  # Roll back the deployment
  kubectl rollout undo deployment/$DEPLOYMENT_NAME -n $NAMESPACE

  # Check the rollback status
  rollback_status=$(kubectl rollout status deployment/$DEPLOYMENT_NAME --timeout=30s -n $NAMESPACE)

  if [[ $rollback_status == *"successfully rolled out"* ]]; then
    echo "Rollback was successful!"
  else
    echo "Rollback failed. Manual intervention required."
    exit 1
  fi
fi


for container status check "Deployment_rollout" job console logs 

"\033[31mFor container status check Deployment_rollout job console logs\033[0m"


ansiColor('xterm') {
    echo "\u001B[31m${kubectlOutput}\u001B[0m"
        }


wget -c https://services.gradle.org/distributions/gradle-7.4.2-bin.zip -P /tmp

unzip -d /opt/gradle /tmp/gradle-7.4.2-bin.zip

cat < /etc/profile.d/gradle.sh
  EOF <<<
  export GRADLE_HOME=/opt/gradle/gradle-7.4.2

  export PATH=${GRADLE_HOME}/bin:${PATH}
  >>
chmod +x /etc/profile.d/gradle.sh

source /etc/profile.d/gradle.sh