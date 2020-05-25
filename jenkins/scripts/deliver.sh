#!/usr/bin/env bash

echo 'Creating .jar to store in Jenkins maven-repository'
set -x
mvn jar:jar install:install help:evaluate -Dexpression=project.name
set +x

echo 'Get the name of the project from the pom.xml'
set -x
NAME=`mvn help:evaluate -Dexpression=project.name | grep "^[^\[]"`
set +x

echo 'Get the version of the project from the pom.xml'
set -x
VERSION=`mvn help:evaluate -Dexpression=project.version | grep "^[^\[]"`
set +x

echo 'Runs the project and outputs it to the Maven UI'
set -x
java -jar target/${NAME}-${VERSION}.jar
