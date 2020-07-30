echo "Guessing game"
echo"Guess the number of files in directory"
wccount=$(ls-la |wc-1)
function qn {
echo "Enter number of files in directory"
read num
}
while [[$num -ne $wcount]]
do
qn
if[[$num -gt $wcount]]
then
echo "The number of files you guessed is greater than the original number of files"
elif [[$num -lt $wcount]]
then
echo "The number of files you guessed is smaller than the original number of files"
else 
echo "The number of files you guessed is wrong"
fi
done
echo "The game of guessing directory is almost done"
