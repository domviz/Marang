#! /bin/bash

sed -f mar3 $1 | sed -f hextobin | sed -f bitoascii > $2 
