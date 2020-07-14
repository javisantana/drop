#!/bin/bash

for t in `ls -1 tests/*.test`; do
    echo "Running $(cat $t)"
    if res=$(bash $t $1 | diff ${t}.result -); then
        echo 'OK';
        exit 0;
    else
        echo "failed, diff:";
        echo "$res";
        exit -1;
    fi
done;
