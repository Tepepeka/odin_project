=begin
Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

  > caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"

Quick Tips:
You will need to remember how to convert a string into a number.
Don’t forget to wrap from z to a.
Don’t forget to keep the same case.
=end


def caesar(string, key)
  new_string = []
  if string.class != String
    print "Enter a string plz!"
  else
    modify_string = string.chars.map{|letter| letter.ord}
    modify_string.each do |x|
      if (x >= "a".ord && x <= "z".ord)
        number = x + key         
          if number > "z".ord #122
            new_string << ((number - 1 - "z".ord) + "a".ord).chr   
          elsif number < "a".ord #97               
            new_string << ("z".ord - ("a".ord - 1 - number)).chr
          else
            new_string << number.chr
          end
      elsif (x >= "A".ord && x <= "Z".ord)
        number = x + key
          if number > "Z".ord #122
            new_string << ((number - 1 - "Z".ord) + "A".ord).chr
          elsif number < "A".ord #97               
            new_string << ("Z".ord - ("A".ord - 1 - number)).chr
          else
            new_string << number.chr
          end
      else
        new_string << x.chr
      end
    end
  end
  return new_string.join()
end