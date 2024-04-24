#!/usr/bin/env bash

set -e

SRCS="iac"
[ -d "$SRCS" ] || (echo "Run this script from project root"; exit 1)


pushd $SRCS
# formatting
terraform fmt

# validation
tflint
terraform validate