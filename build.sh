#!/bin/bash
set -e

mkdir -p ./build/

scss-lint _button.scss
scss-lint _buttonTest.scss

sassc \
--load-path ../../../extend-core/modular-scale/ \
--load-path ../../../extend-core/vertical-rhythm/ \
--sourcemap app.scss build/app.css

autoprefixer build/app.css
