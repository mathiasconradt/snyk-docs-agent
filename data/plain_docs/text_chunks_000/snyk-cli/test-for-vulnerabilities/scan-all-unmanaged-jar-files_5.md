NOTE: will ERROR on files with whitespace in name or contained in directories with whitespace in name
for file in $(find . -type f -name '*.jar' | uniq)
do
echo ""
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="  
echo $file
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
