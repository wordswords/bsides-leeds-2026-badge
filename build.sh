#!/bin/bash

set -x
set -e

arduino-cli config init
arduino-cli config set board_manager.additional_urls https://drazzy.com/package_drazzy.com_index.json
arduino-cli core update-index
arduino-cli core install megaTinyCore:megaavr

arduino-cli compile --fqbn megaTinyCore:megaavr:atxy6:chip=1616,clock=20internal,bodvoltage=1v8,bodmode=disabled,eesave=enable,millis=enabled,resetpin=UPDI,startuptime=8,wiremode=mors,printf=default,PWMmux=A_default,attach=allenabled,WDTtimeout=disabled,WDTwindow=disabled --build-path ./compiled .

