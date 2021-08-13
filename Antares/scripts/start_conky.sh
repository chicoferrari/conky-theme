#!/bin/bash

cd $(dirname $0)

killall conky
sleep 10
conky -c ~/.conky/Antares/AntaresOK
