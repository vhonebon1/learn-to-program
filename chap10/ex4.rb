def english_number(number) 
    if number <= 0
        puts "Please enter a positive number"
    end
return_string = ''  
  
ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']  
tens = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']  
teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'] 
   
thousands = (number/1000).to_i
    if thousands != 0
        return_string << english_number(thousands) + " thousand "
        left = number - thousands*1000 
    else 
        return_string << ""
        left = number - thousands*1000
    end
 
hundreds = (left/100).to_i  
    if hundreds != 0  
        return_string << ones[hundreds-1] + ' hundred and '  
        left = number - thousands*1000 - hundreds*100 
    else
        return_string << ""
        left = number - thousands*1000 - hundreds*100
    end  
 
tens_group = (left/10).to_i  
    if  tens_group > 1
        return_string <<  tens[tens_group -1]  
        left = number - thousands*1000 - hundreds*100 - tens_group*10  
    
final = (left/1).to_i  
        if final != 0  
            return_string << " " + ones[final-1]  
    end
elsif tens_group == 1
left = number - thousands*1000 - hundreds*100 - tens_group*10
return_string << teens[(left%10)-1]
else 
    if left != 0
        return_string << ones[left-1]
    else
       return_string << ""
   end
end
return_string  
end
