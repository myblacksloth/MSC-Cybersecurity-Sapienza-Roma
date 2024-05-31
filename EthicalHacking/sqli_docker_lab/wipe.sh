#!/bin/bash

# +------------------------------------------------------------
# | (C) Antonio Maulucci 2024
# +------------------------------------------------------------
# | SQL Injection Lab
# |
# |
# |
# |
# +------------------------------------------------------------

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
pushd "${SCRIPT_DIR}"

# bash clean.sh

sudo docker rmi sqli_lab_mysql
sudo docker image prune -a

popd
