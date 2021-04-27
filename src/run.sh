#!/bin/sh
BASEPATH=~/GenClass/
PROGRAM=$BASEPATH/src/genclass
DATAPATH=~/COVID/
GENOMES=500
GENERATIONS=2000
DATAFILE=$1
OUTFILE=$1.out
INSTANCES=30
for i in $(seq 1 $INSTANCES)
do
$PROGRAM -p $DATAPATH/$DATAFILE.train -c $GENOMES -g $GENERATIONS   -t $DATAPATH/$DATAFILE.test  -o full  -r $i >> $OUTFILE
done
