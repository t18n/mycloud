#! /bin/bash

for dir in ./containers/*; do
  if [ "$dir" != "./containers/.unused" ] && [ -d "$dir" ] && [ -f "$dir/docker-compose.yml" ]; then
    docker compose up -d -f "$dir/docker-compose.yml"
    echo "Started $dir"
  fi
done
