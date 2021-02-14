#!/bin/sh
gunicorn -D -b :15001 --access-logfile app.log --error-logfile app.log --certfile=${CERT:-/tls/cert} --keyfile=${KEY:-/tls/key} run:app
gunicorn -D -b :15000 --access-logfile app.log --error-logfile app.log run:app
tail -f app.log
