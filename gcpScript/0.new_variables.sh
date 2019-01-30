#!/bin/bash

#RUN_SESSION=20181122114000

GCP_PROJECT_NAME=scala-project
GCP_PROJECT_ID=scalaproject-230113

GCS_BUCKET_NAME=${GCP_PROJECT_NAME}-data-bucket
GCS_BUCKET_ZONE=europe-west1
GCS_BUCKET_CLASS=regional

#GCS_SRC_BUCKET_NAME=${GCP_PROJECT_NAME}-src-bucket
#GCS_SRC_BUCKET_ZONE=europe-west1
#GCS_SRC_BUCKET_CLASS=regional

SCALA_JAR_FILENAME=provacloud_2.11-0.1.jar
SCALA_JAR_FILE=files/src/${SCALA_JAR_FILENAME}
#SCALA_JAR_FILE_LOCALPATH=file://$(pwd) 
SCALA_RUNNABLE_CLASS=MyFirstSparkJob

#SCALA_JAR_FILE_FOR_JOB_SUBMIT=${SCALA_JAR_FILE_LOCALPATH}/${SCALA_JAR_FILE}
SCALA_JAR_FILE_FOR_JOB_SUBMIT=gs://${GCS_SRC_BUCKET_NAME}/${SCALA_JAR_FILENAME}

DATA_FILE=3prod10users24review.csv

DATAPROC_CLUSTER_NAME=scala-project-cluster
DATAPROC_CLUSTER_REGION=europe-west1
DATAPROC_CLUSTER_ZONE=europe-west1-d

DATAPROC_MASTER_NUM=1
DATAPROC_MASTER_DISK_TIPE=pd-standard
DATAPROC_MASTER_DISK_SIZE=16GB
DATAPROC_MASTER_MACHINE_TYPE=n1-standard-2

DATAPROC_WORKER_NUM=3
DATAPROC_WORKER_DISK_TIPE=pd-standard
DATAPROC_WORKER_DISK_SIZE=16GB
DATAPROC_WORKER_MACHINE_TYPE=n1-standard-2

