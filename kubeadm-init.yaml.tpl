apiVersion: kubeadm.k8s.io/v1alpha1
kind: MasterConfiguration
api:
  advertiseAddress: K8SHA_IP1
etcd:
  endpoints:
  - https://K8SHA_IP1:2379
  - https://K8SHA_IP2:2379
  - https://K8SHA_IP3:2379
  caFile: /etc/kubernetes/pki/etcd/ca.pem
  certFile: /etc/kubernetes/pki/etcd/client.pem
  keyFile: /etc/kubernetes/pki/etcd/client-key.pem
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
apiServerExtraArgs:
  endpoint-reconciler-type: lease
token: K8SHA_TOKEN
tokenTTL: "0"
