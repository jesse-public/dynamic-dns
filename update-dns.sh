#!/bin/sh

echo "Updating dynamic DNS... $(date)"
curl --ssl-reqd --tlsv1.2 -o /dev/null -s -w "Status: %{http_code}\n" "${DYNAMIC_DNS_URL}"
