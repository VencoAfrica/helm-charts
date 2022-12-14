#!/usr/bin/env bash

curl -X POST http://0.0.0.0:8500/bench-command \
    -H 'Content-Type: application/json' \
    -u '4b028616-078f-4f55-8d05-be4bc209ed5d:ObBL0blEyJqBXgXU0nR9vOGq6hjms9hk5ReovdnxvHGzDF2fVjZ1GAGCUQkZYE62'\
    -d '{
  "job_name": "create-site'$1'-job",
  "sites_pvc": "frappe-bench-erpnext",
  "args": [
    "bench",
    "new-site",
    "--admin-password=admin",
    "--db-host=172.30.64.14",
    "--mariadb-root-password=all0wm3n0t",
    "--mariadb-root-username=root",
    "--no-mariadb-socket",
    "--install-app=erpnext",
    "--install-app=estate_manager",
    "--install-app=mpesa_integration",
    "--install-app=paystack_integration",
    "--install-app=meter_management",
    "--install-app=simple_payments",
    "--install-app=control_central_client",
    "--force",
    "vsite'$1'.venco.africa"

  ],
  "command": null,
  "logs_pvc": null,
  "namespace": "preprod",
  "worker_image": "us-central1-docker.pkg.dev/venco-inc/frappe-worker/frappe-worker:venco_build_v1",
  "nginx_image": "us-central1-docker.pkg.dev/venco-inc/frappe-nginx/frappe-nginx:v12.3",
  "populate_assets": true
}'