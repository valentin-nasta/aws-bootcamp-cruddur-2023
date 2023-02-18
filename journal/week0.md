# Week 0 — Billing and Architecture

## Required Homework/Tasks

### Install and Verify AWS CLI

I decided to use a local environment VM, because I had issues with Gitpod or Github Codespaces.
I installed the AWS CLI via command in Ubuntu terminal.

I followed the instructions on this page: [Installing or updating the latest version of the AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

Ran these commands on the terminal:
```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
```
but I got the error that I had no curl installed, So I installed it and tried again, unpacked:
```bash
unzip -qq awscliv2.zip
```

and installed it
```bash
sudo ./aws/install
```
and tested it with
```bash
aws --version
```
![AWS CLI installation image](week0-files/aws-cli-installation.png)

I created an IAM user and assigned access key, proof that it's working:
![AWS CLI sts get-caller-identity proof](week0-files/aws-cli-proof-sts-get-caller-identity.png)

### Create a Billing Alarm
I created my own Billing Alarm.

### Create a Budget
I created my own Budget for 10€.

### Recreate Logical Architecture
![Logical Architecture](week0-files/logical-architecture-recreation-diagram.png)
[Lucid app link](https://lucid.app/lucidchart/5c53969c-9a26-49a7-9298-6b92674cbd92/edit?viewport_loc=-115%2C91%2C2883%2C1440%2C0_0&invitationId=inv_0e55821a-69f8-471f-9872-226244c002c8)

## Homework Challenges

