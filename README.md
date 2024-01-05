# NiazTask


This repository contains terraform code that will spin up ec2 instance using a linux ami on AWS.

It also creates a mySql database using RDS which is highly available and resilient.

### To run this, do the following:

Make sure you have terraform cli and aws cli installed on your machine.

Login to your aws account with 'aws configure' and enter aws credentials and region.

cd to the terraform directory.

Run 'terraform init'.

Run 'terraform plan'.

If you're happy with the additions terraform will make, run 'terraform apply'.

This will begin creating resources in AWS. 

Outputs in the terminal will show you details of what has been created.

Verify this by checking on the AWS console.

Finally you can run 'terraform destroy' to delete all resources created.

### Automation
I have automated this whole script to use Github Actions. You can view runs by clicking on Actions tab on the repo.

https://github.com/Niazz/NiazTask/actions

I have also integrated this with Terraform Cloud to view runs and logs.

https://app.terraform.io/app/niazOrg/workspaces/niaz

This can be ran locally however you may need to update AWS credentials.
