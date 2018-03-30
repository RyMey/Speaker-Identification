


files="*.wav"
for f in $files
do
  sox "$f" temp.wav silence 1 0.1 1% reverse
  sox temp.wav "${f%.*}-trimmed.wav" silence 1 0.1 1% reverse
done
rm temp.wav
