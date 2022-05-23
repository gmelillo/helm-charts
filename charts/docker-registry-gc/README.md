# docker-registry-gc

![Version: 0.1.8](https://img.shields.io/badge/Version-0.1.8-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.1.8](https://img.shields.io/badge/AppVersion-0.1.8-informational?style=flat-square)

A Helm chart that deploy docker registry garbage collector cronjob

**Homepage:** <https://github.com/gmelillo/helm-charts>

## Installation

### Add Helm repository

```shell
helm repo add gmelillo https://helm.melillo.me
helm repo update
```

### Install

```shell
helm install --generate-name gmelillo/docker-registry-gc
```

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| gabriel | <gabriel@melillo.me> |  |

## Source Code

* <https://github.com/gmelillo/registry>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| cronjob.annotations | object | `{}` |  |
| cronjob.concurrencyPolicy | string | `"Forbid"` |  |
| cronjob.failedJobsHistoryLimit | int | `1` |  |
| cronjob.labels | object | `{}` |  |
| cronjob.restartPolicy | string | `"OnFailure"` |  |
| cronjob.schedule | string | `"0 4 * * *"` |  |
| cronjob.successfulJobsHistoryLimit | int | `3` |  |
| env | object | `{}` |  |
| envFrom | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.repository | string | `"gmelillo/registry"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | object | `{}` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| pod.labels | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| registry.configMap | string | `"registry-config"` |  |
| resources | object | `{}` |  |
| secrets | object | `{}` |  |
| securityContext | object | `{}` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |