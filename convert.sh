#!/bin/bash
rm -r outputs
mkdir -p outputs

for f in inputs/*.ani; do
    name=$(basename $f .ani)
    mkdir -p outputs/$name
    cp "inputs/$name.ani" outputs/$name/
    ani2ico/ani2ico "outputs/$name/$name.ani"
    rm "outputs/$name/$name.ani"
    cd "outputs/$name/"
    for ff in *.ico; do
        filename=$(basename $ff .ico)
        convert "$filename.ico" "$filename.png"
        identify -format '%w 1 1 %f 200\n' "$filename.png" >> "$filename.xcg"
        xcursorgen "$filename.xcg" "$filename"
    done
    rm *.ico
    cd ../..
done
