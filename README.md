# NiazTask

Task for CyberDuck
This repository contains terraform code that will spin up ec2 instance using a linux ami on AWS.
It also creates a mySql database using RDS which is highly available and resilient.

To run this, do the following:

Make sure you have terraform cli and aws cli installed on your machine.
Login to your aws account with 'aws configure' and enter aws credentials and region.
cd to the terraform directory.
Run 'terraform init'.
Run 'terraform plan'.
If you're happy with the additions terraform will make, run 'terraform apply'.
This will begin creating resources in AWS. 
Outputs in the terminal will show you details of what has been created.
Verify this by checking on the AWS console.
