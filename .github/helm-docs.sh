#!/bin/bash
set -euo pipefail

HELM_DOCS_VERSION="v1.11.0"

# install helm-docs
curl --silent --show-error --fail --location --output /tmp/helm-docs.tar.gz https://github.com/norwoodj/helm-docs/releases/download/${HELM_DOCS_VERSION}/helm-docs_${HELM_DOCS_VERSION#v}_Linux_x86_64.tar.gz
tar -xf /tmp/helm-docs.tar.gz helm-docs

# validate docs
./helm-docs --chart-search-root=charts --template-files=charts/README.md.gotmpl
git diff --exit-code
