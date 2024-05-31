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

dockerdir="./sqli"

pushd ${dockerdir}

sudo docker-compose -f docker-compose.yaml down

popd


# back to default path
popd
