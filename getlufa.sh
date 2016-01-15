#!/bin/bash
if [ -x lufa-LUFA-151115 ]
then
    echo "LUFA EXISTS"
    exit 0
fi
wget -O lufa.zip http://www.fourwalledcubicle.com/files/LUFA/LUFA-151115.zip
unzip lufa.zip
rm lufa.zip
