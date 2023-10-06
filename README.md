# Bitcaster Helm Charts

Forks of existent or own charts.
The code is provided as-is with no warranties.

## Usage

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```console
helm repo add bitcaster https://bitcaster.github.io/helm-charts
```

You can then run `helm search repo bitcaster` to see the charts.

<!-- Keep full URL links to repo files because this README syncs from main to gh-pages.  -->
Charts documentations are available in the [charts directory](https://github.com/Bitcaster/helm-charts/blob/main/charts/README.md).

### Terraform Usage Example

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


## License

<!-- Keep full URL links to repo files because this README syncs from main to gh-pages.  -->
[Apache 2.0 License](https://github.com/Bitcaster/helm-charts/blob/main/LICENSE).
