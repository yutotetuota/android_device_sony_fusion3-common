#!/bin/bash

# Use tradition sort
export LC_ALL=C

FP=$(cd ${0%/*} && pwd -P)
export VENDOR=$(basename $(dirname $FP))
export DEVICE=$(basename $FP)
export BOARDCONFIGVENDOR=false
export BOARD_VENDOR_PLATFORM=fusion3

BASE=../../../vendor/$VENDOR/$DEVICE
rm -rf $BASE
mkdir -p $BASE/proprietary/lib

wget -q -O $BASE/proprietary/lib/liboemcrypto.so https://github.com/TheMuppets/proprietary_vendor_sony/raw/cm-13.0/fusion3-common/proprietary/lib/liboemcrypto.so

../fusion3-common/setup-makefiles.sh
