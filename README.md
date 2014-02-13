CDH5 install presteps
---------------------
Author: stuart@cloudera.com

A number of steps are required to prep a cluster for the CDH install, these 
rudimentary few scripts eases the pain.

These scripts were created against hosts running in Amazon EC2, where you can use the same key/pair file for access to the ec2-user.

TODO: Replace with puppet.

Usage:

- Put nodes into hosts.txt
- Put the scripts you want to run into scripts.txt (01_date.sh and 02_id.sh
are examples).
- Execute it:
````
run_it.sh <keyFile.pem>
````
