#!/bin/bash
#!/bin/bash

#Get the location of latest war file

warfile=$(ls -Art /home/ubuntu/artifacts/*.war | tail -n 1)
warfilePath=$(realpath $warfile)

echo $warfilePath

# Replace the path in vars.yaml
sed -i "s,\#warfilePath\#,$warfilePath,g" deployscripts/vars.yaml

tag="cit-web*"

echo "Create hosts file"
echo "[webservers]" > hosts 
aws ec2 describe-instances --region us-east-1 --filters "Name=tag:Name, Values='${tag}'" \
                           --query "Reservations[].Instances[].PrivateIpAddress" \
                            --output text | tr -s '\t' '\n'  >> hosts  
                            
echo "[webservers:vars]" >> hosts
echo "ansible_ssh_user=ubuntu" >> hosts

ansible-playbook -i hosts deployscripts/tomcat_deploy.yaml
