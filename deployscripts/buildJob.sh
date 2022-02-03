#!/bin/bash

# This script runs build job and saves the artifact to local folder.

echo $buildNumber
echo $buildDir
artifactsPath="/home/ubuntu/artifacts"

sudo mkdir -p $artifactsPath
sudo chown -R $artifactsPath
sudo chmod u+s -R $artifactsPath
sudo chmod g+s -R $artifactsPath

# Compiling the Appliction with Maven.
mvn package     

# Save the file to the Artifacts here   
echo "Saving Artifact to Artifcats folder"   
sudo cp $buildDir/s/target/petclinic.war $artifactsPath/petclinic_$buildId.war

