#!/usr/bin/env bash

set -e
set -u

INFILE=${1}

jq '.[] | (.id|tostring) + " - " + .start_date + " - " + .timezone + " - " + .name + " - " + .location_country + " - " + .sport_type + " - " + (.distance|tostring) + " meters"' ${INFILE}