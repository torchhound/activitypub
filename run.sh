#!/bin/sh

set -e

# Wait for Postgres to become available.
until psql -h db -U "postgres" -c '\q' 2>/dev/null; do
  >&2 echo "Waiting for Postgres..."
  sleep 1
done
cd activitypub/
mix deps.get
mix ecto.create
mix ecto.migrate
mix phx.server