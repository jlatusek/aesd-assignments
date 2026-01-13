#!/bin/bash

filesdir=$1
searchstr=$2

if [[ $filesdir == "" || $searchstr == "" || ! -d $filesdir ]]; then
    exit 1
fi

RG_OUT=$(rg -c $searchstr $filesdir )
FILES=$(echo -n "$RG_OUT" | wc -l)
MLINES=$(echo -n "$RG_OUT" | awk -F ":" '{s+=$2} END {print s}')

echo "The number of files are $FILES and the number of matching lines are $MLINES"

