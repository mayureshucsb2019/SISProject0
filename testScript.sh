#!/bin/sh
for i in 1 2 4 8 16 32 64 128 256
do
    echo "..........................CHECKING HTTPS..................."
    ab -k -c $i -t 10 -n 100000 "https://github.com/mayureshucsb2019/SISProject0"
    echo "..........................CHECKING HTTP...................."
    ab -k -c $i -t 10 -n 100000 "http://github.com/mayureshucsb2019/SISProject0"
    echo "..........................................................."
    echo ""
done 
