#!/bin/sh -e

PREFIX="${PREFIX:-/usr/local}"

for t in alert mon; do
  mkdir -m 755 -p "${PREFIX}/mon/${t}.d"
  find "./${t}.d" -maxdepth 1 -type f -print0 | xargs -0 --no-run-if-empty install -t "${PREFIX}/mon/${t}.d" -m 755 -v
done

# vim:set ft=sh :
