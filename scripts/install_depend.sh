#!/bin/bash
if ! [ -x "$(command -v httpd)" ]; then 
sudo yum install -y httpd >&2
fi
