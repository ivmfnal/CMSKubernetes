#! /bin/sh

export CMS_REPO=~/CMSKubernetes/helm
export INSTANCE=dev
export PROBE_NAME=cms-probe-${INSTANCE}

helm install --name $PROBE_NAME --values cms-rucio-common.yaml,${INSTANCE}-db.yaml,dp-release.yaml $CMS_REPO/rucio-cron-jobs





