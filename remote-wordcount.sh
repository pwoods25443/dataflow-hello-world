#!/bin/bash

DIR=gs://paul-scratch/wordcount-mod-j
PROJECT=world-fishing-827

python -m wordcount-mod \
  --project $PROJECT \
  --runner DataflowRunner \
  --staging_location $DIR/staging \
  --temp_location $DIR/temp \
  --input gs://paul-scratch/data/jabberwocky.txt \
  --output $DIR/output
