#!/bin/bash

set -e -o pipefail

arg=$1
for line in `pass $arg`
do
  echo "export $line"
done
