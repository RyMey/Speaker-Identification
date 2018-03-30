files="*.wav"
for f in $files
do
  sox "$f" "${f%.*}-pad.wav" pad 0 1.5
done
