#Joel McKinzie: ME701 Fall 2015
#This Script accepts a user entry for temperature in Fahrenheit
#Then converts the value to Celcius and outputs the result.

echo -n "Enter temperature in Fahrenheit: "
read tf
tc=$(echo "scale=8;(5/9)*($tf-32)"|bc)
echo $tc "is the temperature in celcius"

tk=$(echo "scale=8;$tc+273"|bc)
echo $tk "is the temperature in Kelvin"
