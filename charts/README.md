# Bitcaster Helm Charts

## cert-manager-webhook-cloudns

Originated from [here](https://github.com/mschirrmeister/cert-manager-webhook-cloudns), we use his fork's docker image in our chart.

It's more or less a copy of [this directory](https://github.com/mschirrmeister/cert-manager-webhook-cloudns/tree/master/deploy/cert-manager-webhook-cloudns), but useful with Terraform [helm release](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release).

### Example usage

```terraform
resource "helm_release" "cert-manager-webhook-cloudns" {
  name       = "webhook-cloudns"
  repository = "https://bitcaster.github.io/helm-charts/"
  chart      = "cert-manager-webhook-cloudns"
  version    = "1.0.1"
  namespace  = "cert-manager"

  values = [
    file(./cloudns.yaml")
  ]
}
```
