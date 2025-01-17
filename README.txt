Overview :-

This is basic script which converts ascci inputs available on keyboard to the Devnagari. care has been taken in assigning values as close phonetially possible.Refer 'keymappings' for how keys have been mapped. 

there are two scripts 'converter' which converts ascii inputs to equivalent Devnagari script. and 'inverter' which does the opposit, i.e. given Devnagari sript converts to equivalent ascii inputs.


Working of the 'converter' :- 

sed -f asciito16bi2 $1 | sed -f 16bito4hex2 | sed -f 4hextodev >$2 

asciito16bi2 converts ascii inputs to 16 bit binary number, 16bito4hex2 converts those binaries into hexadcimal which are same as unicode. finally 4hextodev give character for respective unicode.

Working of the 'inverter' :- 

sed -f mar3 $1 | sed -f hextobin | sed -f bitoascii >$2 

This works same as converter just in reverse.


Tools used for the task are grep, sed, and awk.

input files: e_m_test contains ascii inputs and m_e_test contains Devnagari inputs.
