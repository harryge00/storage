START=$(date +%s%N);
cp $MNT/$FILE .
END=$(date +%s%N);
echo "copy from $MNT/$FILE to `pwd` $((END-START))"