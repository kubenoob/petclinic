#!/bin/bash

# This script runs build job and saves the artifact to local folder.

echo $BUILD_NUMBER
echo $WORKSPACE
artifactsPath="/home/ubuntu/artifacts"


ls -l $WORKSPACE/$JOB_NAME/

ls -l $WORKSPACE/$JOB_NAME/target/*.war

ls -l **/*.war 



sudo mkdir -p $artifactsPath

cp ** 

# Compiling the Appliction with Maven.
# mvn package     



# # Save the file to the Artifacts here   
# echo "Saving Artifact to Artifcats folder"   
# sudo cp $buildDir/s/target/petclinic.war $artifactsPath/petclinic_$BUILD_NUMBER.war

