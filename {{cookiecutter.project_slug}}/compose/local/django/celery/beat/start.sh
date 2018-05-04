#!/bin/sh

set -o errexit
set -o pipefail
set -o nounset
set -o xtrace


rm -f './celerybeat.pid'
celery -A {{cookiecutter.project_slug}}.celery beat -l INFO
