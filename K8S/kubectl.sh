ARCH=$(uname -m)
if [[ "$ARCH" == "aarch64" ]]; then
  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/arm64/kubectl"
else
  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
fi

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client
