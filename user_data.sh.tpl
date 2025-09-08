#!/bin/bash
set -ex

# Install dependencies
apt-get update -y
apt-get install -y python3 python3-pip git mysql-client jq awscli

# Clone repo
cd /home/ubuntu
git clone ${git_repo} app
cd app

# Install app dependencies
pip3 install -r requirements.txt gunicorn

# Fetch secrets from AWS Secrets Manager
SECRET=$(aws secretsmanager get-secret-value --secret-id ${secret_arn} --region ${region} | jq -r .SecretString)
DB_USER=$(echo $SECRET | jq -r .username)
DB_PASS=$(echo $SECRET | jq -r .password)

# Write env file
cat <<EOF > .env
DB_HOST=${rds_endpoint}
DB_USER=$DB_USER
DB_PASS=$DB_PASS
DB_NAME=todos
EOF

# Start app with Gunicorn
gunicorn --bind 0.0.0.0:5000 app:app --daemon

