#!/usr/bin/expect -f
set timeout -1
spawn windscribe login
expect "Username: "
send -- "bsszzt\n"
expect "Password: "
send -- "145879632
expect eof
