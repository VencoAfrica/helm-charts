#!/usr/bin/env bash
helm package helm-charts/*
helm repo index --url https://vencoafrica.github.io/helm-charts --merge index.yaml .
git add -A
git commit -m "revert python image to default erpnext worker"
git push origin