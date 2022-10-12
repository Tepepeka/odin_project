def is_multiple_of_3_or_5?(n)
    if (n % 3 == 0 || n % 5 ==0)
        return true
    else
        return false
    end
end

def sum_of_3_or_5_multiples(final_number)
    sum = 0
    if (final_number.class != Integer || final_number < 0)
        return "it's not an integer or < 0"
    else
        (0...final_number).each do |current_number|
            if is_multiple_of_3_or_5?(current_number)
            sum += current_number
            end
        end
        return sum
    end
end