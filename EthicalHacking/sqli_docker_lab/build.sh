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

dockerdir="./sqlilab"

pushd ${dockerdir}

sudo docker-compose -f docker-compose.yaml build --no-cache
sudo docker-compose -f docker-compose.yaml up -d
# sudo docker-compose ps -a --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}"
sudo docker ps -a --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}"


# sudo docker exec -it ${containerID} /bin/bash

popd


# back to default path
popd
