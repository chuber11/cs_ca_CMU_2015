
1)
Download slides from
https://course.ece.cmu.edu/~ece447/s15/doku.php?id=schedule
to pdf

2)
Download audio with
yt-dlp --extract-audio "https://www.youtube.com/playlist?list=PL5PHm2jkkXmi5CxxI7b3JCL1TWybTDtKq"

bash rename_audio.sh

3)
python extract_words.py extracts new words from pdf to .words file

4)
run_shas.sh for segmenting the audio

5)
bash generate_segments.sh

6)
bash convert_audio.sh
