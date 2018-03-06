#!/bin/bash

# Run maximum of below # of parallel process at most
MAX_NPROC=25

mkdir -v logs

for server in `cat servers.txt`
do
        echo "running on $server..."
        (cat run.sh | ssh -qqq -tt -o ConnectTimeout=10 -o StrictHostKeyChecking=no -o BatchMode=yes $server > logs/$server.log 2>&1) &
        NPROC=$(($NPROC+1))
        if [ "$NPROC" -ge "$MAX_NPROC" ]; then
                echo "max # of parallel processes ($MAX_NPROC) reached! waiting..."
                wait
                NPROC=0
        fi
done

wait
