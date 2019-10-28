#!/bin/bash

# getting connection errors when running xml2rfc - seems like that
# may be a transient failure so for now this script can brute force
# that:-)

attempt=0

while (true)
do 
    make >xx 2>&1
    if [ -f draft-farrell-tls-pemesni.txt ]
    then
        echo "Done (finally, after $attempt tries!))"
        break
    else
        attempt=$((attempt+1))
        echo "Bummer - failed attempt $attempt"
        sleep 5
    fi
done
