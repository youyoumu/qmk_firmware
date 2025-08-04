default:
    qmk flash -c -kb crkbd -km manna-harbour_miryoku \
    -e MIRYOKU_ALPHAS=QWERTY \
    -e MIRYOKU_EXTRA=QWERTY \
    -e MIRYOKU_TAP=QWERTY \
    -e MIRYOKU_NAV=VI \

devenv:
    devenv shell -v
