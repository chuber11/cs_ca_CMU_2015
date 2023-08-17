
mkdir -p audio
for f in Lecture*.opus
do
    f2=`echo $f | cut -d"." -f1 | sed "s/：/:/g" | cut -d":" -f1 | sed "s/ /_/g"`".opus"
    mv "$f" audio/"$f2"
done

mv "Final Review Session - Carnegie Mellon - Computer Architecture 2015 - Onur Mutlu [5Oi7tvYE7fI].opus" "audio/Final_Review.opus"

rm *.opus
rm *.m4a
