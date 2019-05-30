#! /bin/sh

WORKDIR=$(dirname "$0")
cd "$WORKDIR" || exit 1

if grep -q InvertScreen=false /mnt/onboard/.kobo/Kobo/Kobo\ eReader.conf; then
  sed -i 's/InvertScreen=false/InvertScreen=true/g' /mnt/onboard/.kobo/Kobo/Kobo\ eReader.conf
else
  sed -i 's/InvertScreen=true/InvertScreen=false/g' /mnt/onboard/.kobo/Kobo/Kobo\ eReader.conf
fi

eval "$(xargs -n 1 -0 < /proc/$(pidof nickel)/environ | grep -E 'INTERFACE|WIFI_MODULE|DBUS_SESSION|NICKEL_HOME|LANG' | sed -e 's/^/export /')"
sync
killall -TERM nickel hindenburg sickel fickel fmon > /dev/null 2>&1

export MODEL_NUMBER=$(cut -f 6 -d ',' /mnt/onboard/.kobo/version | sed -e 's/^[0-]*//')
export LD_LIBRARY_PATH="libs:${LD_LIBRARY_PATH}"


./nickel.sh &
