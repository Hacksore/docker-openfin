
# !/bin/bash

echo "test script"

# init demo
npm init -y

# installing cli
npm i openfin-cli

# start xvfb
/usr/bin/Xvfb :0 -screen 0 1280x1024x24 &

# run openfin
DISPLAY=:99 DEBUG=* LOG_LEVEL=debug ./node_modules/.bin/openfin -l -c https://gist.githubusercontent.com/Hacksore/b3398037b518e1ba9d85807c7d96993c/raw/9168d9a7c5598d1aa7857e2b9d898d48479182ab/openfin.json
# /app/OpenFin/Runtime/19.89.61.8/openfin