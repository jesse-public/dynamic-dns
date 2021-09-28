#!/usr/bin/env bash

echo "Updating dynamic DNS... $(date)"
curl -o /dev/null -s -w "Status: %{http_code}\n" "${DYNAMIC_DNS_URL}"
