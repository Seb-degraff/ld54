#./tools/bin/ffmpeg -i assets/ld54/sounds_source/*.wav assets/ld54/sounds_compressed/*.ogg

for fullfile in assets/ld54/sounds_source/*.wav
do
    #./tools/bin/ffmpeg -i assets/ld54/sounds_source/{$file}.wav assets/ld54/sounds_compressed/*.ogg
    filename=$(basename -- "$fullfile")
    extension="${filename##*.}"
    filename="${filename%.*}"
    yes | ./tools/bin/ffmpeg -i assets/ld54/sounds_source/$filename.wav assets/ld54/sounds_compressed/$filename.ogg
done