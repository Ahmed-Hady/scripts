# UltraDevs Team
# BY Ahmed Hady

#! /bin/bash
mkdir PATCHES
cd PATCHES
for ((a=$1; a <= $2 ; a++))
do
   c=1
   let b=$a-$c
echo "====================================="
echo "    Getting patch-$3.$4."$b"-$a.xz   "
echo "====================================="
   echo "Downloading..." 
   wget https://cdn.kernel.org/pub/linux/kernel/v$3.x/incr/patch-$3.$4."$b"-$a.xz > /dev/null 2>&1
   echo "Extracting..." 
   unxz patch-$3.$4."$b"-$a.xz
echo ""
echo ""
done
cd ../
