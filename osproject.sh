sumaparelor (){
echo "Primul numar: "
read num1
echo "Al doilea numar: "
read num2
echo "Al treilea numar: "
read num3
echo "Al patrulea numer: "
read num4

sum=0
for num in "$num1" "$num2" "$num3" "$num4"
do
        if [[ $((num%2)) -eq 0 ]]
        then
                sum=$((sum + num))
        fi
done
}

sumaparelor
