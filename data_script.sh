#!/bin/bash

VSTUP=/data-shared/vcf_examples/luscinia_vars.vcf.gz
VYSTUP=~/unix_and_ngs/data.csv

zcat $VSTUP | grep -v '^#' | awk '{print $6, $8}' | sed 's/INDEL;//' | sed 's/IS=[0-9.,]*;//' |
cut -d';' -f1 | sort -n -s -k1,1 | sed 's/ DP=/,/' >> $VYSTUP
