#!/bin/bash
if ! [ -x "$(command -v httpd)" ]; then yum install -y httpd >&2;   exit 1;