#!/bin/bash

for t in `ls -1 tests/*.test`; do
    bash $t | diff ${t}.result -;
done;
