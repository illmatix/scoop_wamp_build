$UTILS = "7zip curl sudo git openssh coreutils grep sed less"

write-host "
***** Installing Utils - $UTILS ******
"

# Basic DEV utils
scoop install $UTILS;

write-host "
***** Util install Complete ******
"
