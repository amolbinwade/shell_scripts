INPUT="/home/amol/Programs/shell_scripts/input"
OUTPUT="/home/amol/Programs/shell_scripts/output/10142018"
echo --------------------------------
echo starting prepare input files

echo input files in directory {$INPUT}
ls -l $INPUT

echo creating output directory
mkdir $OUTPUT
echo created output directory $OUTPUT

echo copying files from input directory to output directory
for filename in "$INPUT"/*.txt; do
  cp $filename $OUTPUT
  echo copied file $filename
done
