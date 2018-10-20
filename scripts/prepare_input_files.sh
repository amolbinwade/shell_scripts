echo --------------------------------
echo starting prepare input files

dt="$(date +%m)""$(date +%d)""$(date +%y)"

echo Today\'s date is $dt

INPUT="/home/amol/Programs/shell_scripts/input"
OUTPUT="/home/amol/Programs/shell_scripts/output/$dt"



echo input files in directory $INPUT :
echo ------
ls -l $INPUT
echo ------
echo creating output directory
mkdir $OUTPUT
echo created output directory $OUTPUT
echo ------
echo copying files from input directory to output directory
for filename in "$INPUT"/*.txt; do
  cp $filename $OUTPUT
  echo copied file $filename
done
echo --------------------------------
