
mkdir -p shas_output

filetype=wav

for file in audio/*.$filetype
do

file2=${file#audio/}
if [ -f "shas_output/${file2%.$filetype}.seg" ]; then
    continue
fi

python audioclient/client.py -i ffmpeg -f "$file" --asr-kv version=offline --asr-kv segmenter=SHAS --ffmpeg-speed -1 --output-file "shas_output/${file2%.$filetype}.seg" --no-textsegmenter --asr-kv dummy_asr=True --asr-kv max_segment_length=10 --no-logging

done

