

FILES=`ls *.svg`
for FILE in ${FILES[*]}; do
  BN=$(basename "$FILE")
  NAME="${BN%.svg}"
  inkscape "$FILE" --export-pdf="$NAME.pdf"
done
