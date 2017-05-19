def wedding_number(int)
    if int < 0
        "Please enter a positive integer"
    end
    if int == 0
        "zero"
    end
    num_string = ""
    ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
    tens_place = ["ten", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "nintey"]
    teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "ninteen"]
    left = int
    write = left/100
    left = left - write*100

    if write > 0
        hundreds = english_number(write)
        num_string = num_string + hundreds + " hundred and"
        if left > 0
            num_string = num_string + " "
        end
    end

    write = left/10
    left = left - write*10

    if write > 0
        if ((write == 1) && (left >0))
            num_string = num_string + teenagers[left-1]
            left = 0
        else
            num_string = num_string + tens_place[write-1]
        end
        if left > 0
            num_string = num_string + " "
        end
    end
    write = left
    left = 0
    if write > 0
        num_string = num_string + "and " + ones_place[write-1]
    end
    num_string
end
