#!/bin/sh -ex

GCP_PROJECT=$1
CR_SERVICE=$2

gcloud beta run deploy "$CR_SERVICE" \
   --image gcr.io/"$GCP_PROJECT"/"$CR_SERVICE" \
   --platform managed \
   --project "$GCP_PROJECT"\
   --region europe-west1 \
   --allow-unauthenticated