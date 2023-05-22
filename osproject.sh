sumaparelor() {
    echo "Primul numar: "
    read num1
    echo "Al doilea numar: "
    read num2
    echo "Al treilea numar: "
    read num3
    echo "Al patrulea numar: "
    read num4

    sum=0
    pare=()

    for num in "$num1" "$num2" "$num3" "$num4"
    do
        if [[ $((num%2)) -eq 0 ]]
        then
            sum=$((sum + num))
            pare+=($num)
        fi
    done

    pare=($(echo "${pare[@]}" | tr ' ' '\n' | sort -n))
    pare_crescator=$(IFS=, ; echo "${pare[*]}")

    echo "Suma numerelor pare este: $sum"
    echo "Numerele pare in ordine crescatoare sunt: $pare_crescator"
}

sumaparelor
