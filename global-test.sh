find . -name  *.flux > fluxfiles.txt

file=fluxfiles.txt
sed -i 's/\.\///g' file
for i in `cat $file`
do
  ./gradlew run --args  "$i"
done

