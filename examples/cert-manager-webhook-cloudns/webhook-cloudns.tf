resource "helm_release" "cert-manager-webhook-cloudns" {
  name       = "webhook-cloudns"
  repository = "https://bitcaster.github.io/helm-charts/"
  chart      = "cert-manager-webhook-cloudns"
  version    = "1.0.3"
  namespace  = "cert-manager"

  values = [
    file("./values.yaml")
  ]
}