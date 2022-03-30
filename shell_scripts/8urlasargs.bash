#Write a function which take a url as argument. Get the HTTP return code of that url. If it return 200 then print OK otherwise print "fail"

#!/bin/bash

echo "Enter a URL"
read url
response=$(curl -Is $url | head -1 | awk '{print $2}')     #client url for checking url response.

case $response in
    200) echo "OK" ;;
    *) echo "Fail" ;;
esac

