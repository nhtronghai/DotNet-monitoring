
ARCH=arm64
K8S_VERSION=$(curl -sL https://dl.k8s.io/release/stable.txt)

curl -LO https://dl.k8s.io/release/${K8S_VERSION}/bin/linux/${ARCH}/kubeadm
curl -LO https://dl.k8s.io/release/${K8S_VERSION}/bin/linux/${ARCH}/kubelet
curl -LO https://dl.k8s.io/release/${K8S_VERSION}/bin/linux/${ARCH}/kubectl

chmod +x kubeadm kubelet kubectl
sudo mv kubeadm kubelet kubectl /usr/local/bin/

