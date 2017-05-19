def new_roman_numeral(num)
    if num <= 0
        puts "please enter a positive integer"
    end
    
    thousands = (num / 1000)
    hundreds = (num % 1000/100)
    tens = (num % 100/10)
    singles = (num % 10)

    new_numeral = thousands * "M"
    
    if hundreds == 9
        new_numeral << "CM"
    elsif hundreds == 4
        new_numeral << "CD"
    else
        new_numeral << "D" * (num % 1000/500)
        new_numeral << "C" * (num % 500/100)
    end
    if tens == 9
        new_numeral << "XC"
    elsif tens == 4 
        new_numeral << "XL"
    else
        new_numeral << "L" * (num % 100/50)
        new_numeral << "X" * (num % 50/10)
    end
    if singles == 9
        new_numeral << "IX"
    elsif singles == 4 
        new_numeral << "IV"
    else
        new_numeral << "V" * (num % 10/5)
        new_numeral << "I" * (num % 5/1)
    end
    new_numeral
end


