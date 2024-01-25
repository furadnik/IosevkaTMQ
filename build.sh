#!/usr/bin/bash

git clone --depth 1 https://github.com/be5invis/Iosevka.git Iosevka
cp private-build-plans.toml Iosevka
cd Iosevka

npm install
npm run build --jCmd=1 -- ttf::IosevkaTmq

tar -czf IosevkaTmq.tar.gz dist
