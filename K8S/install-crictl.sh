VERSION="v1.30.0"
ARCH="arm64"  # or "amd64" depending on your result
curl -LO https://github.com/kubernetes-sigs/cri-tools/releases/download/${VERSION}/crictl-${VERSION}-linux-${ARCH}.tar.gz
sudo tar -C /usr/local/bin -xzvf crictl-${VERSION}-linux-${ARCH}.tar.gz
rm crictl-${VERSION}-linux-${ARCH}.tar.gz
