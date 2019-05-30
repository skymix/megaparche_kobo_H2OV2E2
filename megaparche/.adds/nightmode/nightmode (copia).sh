#! /bin/sh

if grep -q InvertScreen=false /mnt/onboard/.kobo/Kobo/Kobo\ eReader.conf; then
  sed -i 's/InvertScreen=false/InvertScreen=true/g' /mnt/onboard/.kobo/Kobo/Kobo\ eReader.conf
else
  sed -i 's/InvertScreen=true/InvertScreen=false/g' /mnt/onboard/.kobo/Kobo/Kobo\ eReader.conf
fi
