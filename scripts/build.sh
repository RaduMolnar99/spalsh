#!/bin/sh -ex

GCP_PROJECT=$1
CR_SERVICE=$2

gcloud builds submit --tag gcr.io/"$GCP_PROJECT"/"$CR_SERVICE" --project "$GCP_PROJECT"