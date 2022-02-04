# mailu

![Version: 0.2.5](https://img.shields.io/badge/Version-0.2.5-informational?style=flat-square) ![AppVersion: 1.9.12](https://img.shields.io/badge/AppVersion-1.9.12-informational?style=flat-square)

Mailu mail system fork with images working for AMD64+ARM64

## Installation

### Add Helm repository

```shell
helm repo add gmelillo https://helm.melillo.me
helm repo update
```

### Install

```shell
helm install --generate-name gmelillo/mailu
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| admin.image.repository | string | `"testingmultiarch/admin"` |  |
| admin.podAnnotations | object | `{}` |  |
| admin.resources.limits.cpu | string | `"500m"` |  |
| admin.resources.limits.memory | string | `"500Mi"` |  |
| admin.resources.requests.cpu | string | `"500m"` |  |
| admin.resources.requests.memory | string | `"500Mi"` |  |
| affinity | object | `{}` |  |
| certmanager.apiVersion | string | `"cert-manager.io/v1alpha2"` |  |
| certmanager.issuerName | string | `"letsencrypt"` |  |
| certmanager.issuerType | string | `"ClusterIssuer"` |  |
| clamav.enabled | bool | `true` |  |
| clamav.image.repository | string | `"testingmultiarch/clamav"` |  |
| clamav.resources.limits.cpu | string | `"1000m"` |  |
| clamav.resources.limits.memory | string | `"2Gi"` |  |
| clamav.resources.requests.cpu | string | `"1000m"` |  |
| clamav.resources.requests.memory | string | `"1Gi"` |  |
| clusterDomain | string | `"cluster.local"` |  |
| database.mysql | object | `{}` |  |
| database.postgresql | object | `{}` |  |
| database.roundcubeType | string | `"sqlite"` |  |
| database.type | string | `"sqlite"` |  |
| dovecot.enabled | bool | `true` |  |
| dovecot.image.repository | string | `"testingmultiarch/dovecot"` |  |
| dovecot.resources.limits.cpu | string | `"500m"` |  |
| dovecot.resources.limits.memory | string | `"500Mi"` |  |
| dovecot.resources.requests.cpu | string | `"500m"` |  |
| dovecot.resources.requests.memory | string | `"500Mi"` |  |
| external_relay | object | `{}` |  |
| fetchmail.delay | int | `600` |  |
| fetchmail.enabled | bool | `false` |  |
| fetchmail.image.repository | string | `"testingmultiarch/fetchmail"` |  |
| fetchmail.logLevel | string | `"WARNING"` |  |
| fetchmail.resources.limits.cpu | string | `"200m"` |  |
| fetchmail.resources.limits.memory | string | `"200Mi"` |  |
| fetchmail.resources.requests.cpu | string | `"100m"` |  |
| fetchmail.resources.requests.memory | string | `"100Mi"` |  |
| front.controller.kind | string | `"Deployment"` |  |
| front.image.repository | string | `"testingmultiarch/nginx"` |  |
| front.resources.limits.cpu | string | `"200m"` |  |
| front.resources.limits.memory | string | `"200Mi"` |  |
| front.resources.requests.cpu | string | `"100m"` |  |
| front.resources.requests.memory | string | `"100Mi"` |  |
| fullnameOverride | string | `""` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/proxy-body-size" | string | `"0"` |  |
| ingress.externalIngress | bool | `true` |  |
| ingress.realIpFrom | string | `"0.0.0.0/0"` |  |
| ingress.realIpHeader | string | `"X-Forwarded-For"` |  |
| ingress.tlsFlavor | string | `"cert"` |  |
| logLevel | string | `"WARNING"` |  |
| mail.authRatelimit | string | `"10/minute;1000/hour"` |  |
| mail.messageSizeLimitInMegabytes | int | `50` |  |
| mailuVersion | string | `"1.9.12"` |  |
| mysql.image.repository | string | `"library/mariadb"` |  |
| mysql.image.tag | string | `"10.7.1"` |  |
| mysql.resources.limits.cpu | string | `"200m"` |  |
| mysql.resources.limits.memory | string | `"512Mi"` |  |
| mysql.resources.requests.cpu | string | `"100m"` |  |
| mysql.resources.requests.memory | string | `"256Mi"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.size | string | `"100Gi"` |  |
| postfix.image.repository | string | `"testingmultiarch/postfix"` |  |
| postfix.resources.limits.cpu | string | `"500m"` |  |
| postfix.resources.limits.memory | string | `"2Gi"` |  |
| postfix.resources.requests.cpu | string | `"500m"` |  |
| postfix.resources.requests.memory | string | `"2Gi"` |  |
| redis.image.repository | string | `"redis"` |  |
| redis.image.tag | string | `"5-alpine"` |  |
| redis.resources.limits.cpu | string | `"200m"` |  |
| redis.resources.limits.memory | string | `"300Mi"` |  |
| redis.resources.requests.cpu | string | `"100m"` |  |
| redis.resources.requests.memory | string | `"200Mi"` |  |
| roundcube.enabled | bool | `true` |  |
| roundcube.image.repository | string | `"testingmultiarch/roundcube"` |  |
| roundcube.resources.limits.cpu | string | `"200m"` |  |
| roundcube.resources.limits.memory | string | `"200Mi"` |  |
| roundcube.resources.requests.cpu | string | `"100m"` |  |
| roundcube.resources.requests.memory | string | `"100Mi"` |  |
| rspamd.image.repository | string | `"testingmultiarch/rspamd"` |  |
| rspamd.resources.limits.cpu | string | `"200m"` |  |
| rspamd.resources.limits.memory | string | `"200Mi"` |  |
| rspamd.resources.requests.cpu | string | `"100m"` |  |
| rspamd.resources.requests.memory | string | `"100Mi"` |  |
| subnet | string | `"10.42.0.0/16"` |  |
| tolerations | object | `{}` |  |
| webdav.enabled | bool | `false` |  |
| webdav.image.repository | string | `"testingmultiarch/radicale"` |  |