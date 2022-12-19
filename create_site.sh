#!/usr/bin/env bash

curl -X POST https://sc.venco.africa/bench-command \
    -H 'Content-Type: application/json' \
    -u '132af98a-5b9d-40f1-8b93-8fe7d6365624:MuKpjDYkBQ5XttQLikzlYoHurUiTG4uE41E2XRXWhQfGRxv6MX89yG8teHpqlUI0'\
    -d '{
  "job_name": "create-site'$1'-job",
  "sites_pvc": "frappe-bench-erpnext",
  "args": [
    "bench",
    "new-site",
    "--admin-password=admin",
    "--mariadb-root-username=root",
    "--mariadb-root-password=root-password",
    "--force",
    "--install-app erpnext",
    "--install-app meter_management",
    "--no-mariadb-socket",
    "site'$1'.venco.africa"
  ],
  "command": null,
  "logs_pvc": null,
  "namespace": "preprod",
  "worker_image": "us-central1-docker.pkg.dev/venco-inc/frappe-worker/frappe-worker:venco_v0.0.555",
  "nginx_image": "us-central1-docker.pkg.dev/venco-inc/frappe-nginx/frappe-nginx:v12.3",
  "populate_assets": true
}'