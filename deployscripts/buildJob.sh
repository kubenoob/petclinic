#!/bin/bash

# This script runs build job and saves the artifact to local folder.


sudo apt-get update 
sudo apt-get install maven -y

echo $buildNumber
echo $buildDir
artifactsPath="/home/azadmin/agent/artifacts"

mkdir -p $artifactsPath
# Compiling the Appliction with Maven.
mvn package     

# Save the file to the Artifacts here   
echo "Saving Artifact to Artifcats folder"   
cp $buildDir/s/target/petclinic.war $artifactsPath/petclinic_$buildNumber.war

