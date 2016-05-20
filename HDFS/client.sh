#!/bin/bash

cd $PWD/Client
echo "Compiling......!!"
if [ $# -lt 1 ]
then
	echo "Arguments : "
	echo "filename, write for PUT"
	echo "filename, read for GET"
	echo "list for LIST"
	exit
	
fi


javac -d bin src/*/*.java

echo "Hi!! Client Started"
if [ $# -eq 2 ]
then
 	type1=$2
	filename=$1
	java -cp $PWD/protobuf-java-2.5.0.jar:bin Client_hdfs.client $1 $2


elif  [ $# -eq 1 ]
then
	java -cp $PWD/protobuf-java-2.5.0.jar:bin Client_hdfs.client $1
 	

fi
	
