git clone https://github.com/openfaas/faasd --depth=1
cd faasd

sed yum check-update -y
sed -i '/yum check-update -y/s/^/#/' ./hack/install.sh

./hack/install.sh

sudo cat /var/lib/faasd/secrets/basic-auth-password


sudo dnf install -y podman podman-docker
