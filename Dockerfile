FROM qmkfm/base_container

VOLUME /qmk_firmware
WORKDIR /qmk_firmware
COPY . .

ENV keyboard=ergodox
ENV subproject=ez
ENV keymap=ryo

VOLUME /qmk
WORKDIR /qmk
CMD make clean ; make keyboard=${keyboard} subproject=${subproject} keymap=${keymap}
