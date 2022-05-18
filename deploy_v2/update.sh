#!/usr/bin/env bash

set -e

PROJECT_BASE_PATH='/usr/local/apps/profiles-rest-api'

git pull
$PROJECT_BASE_PATH manage.py migrate
$PROJECT_BASE_PATH manage.py collectstatic --noinput
supervisorctl restart profiles_api

echo "DONE! :)"
