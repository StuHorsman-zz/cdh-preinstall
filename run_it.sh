#!/bin/bash

# Quick and dirty cluster update script
# author: stuart@cloudera.com
# TODO: replace this shit with puppet

keyFile=$1
red='\033[0;31m'
NC='\033[0m'

if [ $# != 1 ]
then
	echo "usage: run_it.sh <keyFile.pem>"
	exit 1
fi

for host in `cat hosts.txt`
do
	echo -e "${red}--> Creating cloudera directory on $host...${NC}"
	ssh -i $keyFile ec2-user@$host 'mkdir cloudera'

	for script in `cat scripts.txt`
	do
		echo -e "${red}--> Copying $script to $host...${NC}"
		scp -i $keyFile $script ec2-user@$host:cloudera
		echo -e "${red}--> Executing $script on $host...${NC}"
		ssh -i $keyFile ec2-user@$host -t "sudo bash /home/ec2-user/cloudera/$script"
	done
done

exit 0
