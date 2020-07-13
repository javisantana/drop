#!/bin/bash

for t in `ls -1 tests/*.test`; do
    echo "Running $(cat $t)"
    bash $t | diff ${t}.result - | echo "OK";
done;
