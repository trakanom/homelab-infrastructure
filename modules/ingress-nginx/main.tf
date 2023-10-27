resource "helm_release" "ingress-nginx" {
  name      = "ingress-nginx"
  chart     = "ingress-nginx/ingress-nginx"
  namespace = "ingress-nginx"
}
