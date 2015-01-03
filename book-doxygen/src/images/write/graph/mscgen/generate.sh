
list=*.msc
for file in $list; do
mscgen -i $file -Tpng
done
