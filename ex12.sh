#!/bin/bash
cat /etc/passwd | grep -E 'home|root' | cut -d : -f 1,6 | sed 's/:/ => /'
