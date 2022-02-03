#!/bin/bash

# This script runs build job and saves the artifact to local folder.

echo $BUILD_NUMBER
echo $WORKSPACE
artifactsPath="/home/ubuntu/artifacts"






sudo mkdir -p $artifactsPath
sudo cp $WORKSPACE/target/*.war $artifactsPath/petclinic_$BUILD_NUMBER.war


ls -l $WORKSPACE/target/*.war

ls -l **/*.war 



# Compiling the Appliction with Maven.
# mvn package     



# # Save the file to the Artifacts here   
# echo "Saving Artifact to Artifcats folder"   
# sudo cp $buildDir/s/target/petclinic.war $artifactsPath/petclinic_$BUILD_NUMBER.war

