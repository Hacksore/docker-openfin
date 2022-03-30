# !/bin/bash
OPENFIN_VERSION="19.89.61.8"
OPEFIN_RUNTIME_PATH="/app/OpenFin/Runtime"

# update node repo
curl -sL https://rpm.nodesource.com/setup_14.x | bash -

echo "install deps"
dnf --disablerepo '*' --enablerepo=extras swap centos-linux-repos centos-stream-repos -y
dnf distro-sync
yum install nodejs xorg-x11-server-Xvfb unzip nss atk at-spi2-atk cups libXcomposite libXdamage libXrandr libxkbcommon libgbm gtk3 alsa-lib -y

echo "install openfin"
curl -o /tmp/openfin-$OPENFIN_VERSION https://developer.openfin.co/release/runtime/linux/x64/$OPENFIN_VERSION

mkdir -p $OPEFIN_RUNTIME_PATH

unzip /tmp/openfin-$OPENFIN_VERSION -d $OPEFIN_RUNTIME_PATH/$OPENFIN_VERSION

echo "Make script executable"
chmod +x /app/test.sh

# open perms
chown -R 1000:1000 /app
chmod -R 755 /app

# sandbox stuff?
chown root /app/OpenFin/Runtime/19.89.61.8/chrome-sandbox
chmod 755 /app/OpenFin/Runtime/19.89.61.8/chrome-sandbox