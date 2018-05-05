apiVersion: kubeadm.k8s.io/v1alpha1
kind: MasterConfiguration
networking:
  podSubnet: K8SHA_CIDR
  serviceSubnet: K8SHA_SVC_CIDR
apiServerCertSANs:
- K8SHA_HOSTNAME1
- K8SHA_HOSTNAME2
- K8SHA_HOSTNAME3
- K8SHA_IP1
- K8SHA_IP2
- K8SHA_IP3
- K8SHA_IPVIRTUAL
- 127.0.0.1
token: K8SHA_TOKEN
tokenTTL: "0"
