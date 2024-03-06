#set -e

# compile qoaconv utility
clang ../../code/qoaconv.c -std=gnu99 -lm -O3 -o ../../tmp/qoaconv

for fullfile in ./sounds_source/*.wav
do
    filename=$(basename -- "$fullfile")
    extension="${filename##*.}"
    filename="${filename%.*}"
    yes | ../../tools/ffmpeg/ffmpeg -i ./sounds_source/$filename.wav ./sounds_ogg/$filename.ogg
    ../../tmp/qoaconv ./sounds_source/$filename.wav ./sounds_qoa/$filename.qoa
done