#! /bin/bash

sed -f asciito16bi2 $1 | sed -f 16bito4hex2 | sed -f 4hextodev > $2 
