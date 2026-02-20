#!/usr/bin/env bash

N="65"

for ((i=1; i<=N; i++)); do
  echo "text $i" > test.txt
  git add .
  git commit -m "test commit $i"
  git push
  
  dslagent --account ectug4-kmdj3c-0j4bty --device x3tmdo-t5yfyk-84lcc7 --mode backup --trace-to-console --config /home/wkl/projects/keepit/targets/debian12-amd64/fulltest/cloudbackup.xml --dsl-source-file /home/wkl/workspace/keepit-workspace/src/cloudbackup/agents/dsl/cdl/github/github.cdl
done
