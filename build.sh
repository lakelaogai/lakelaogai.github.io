#!/bin/bash

# set dir to this dir
cd "$(dirname "$0")"
cp resume.md ./pandoc_resume/markdown/resume.md

# move to pandoc in order to execute docker compose
cd ./pandoc_resume
docker compose build
docker compose up