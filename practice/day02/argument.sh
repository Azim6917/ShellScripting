#!/bin/bash

<< useradding
echo "Add user $1"

sudo useradd -m $1

echo "user $1 has been added"

useradding

echo "$1 is doing calculation by multiplying $2 and $3"

echo "so the answer that $1 got is $(($2*$3))"
