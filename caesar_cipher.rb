def caesar_cipher(string, number)
    
    ord = string.split
    
    nytt_ord = []
    ny_setning = []
    y = 0
    
    ord.each do |word|
        
        word.each_char do |i|
            
            if (i.ord > 96) && (i.ord < 123)
            
                y = i.ord + number
            
                if y > 122
                    y -= 26
                end
            
            elsif (i.ord > 65) && (i.ord < 90)
            
                y = i.ord + number
            
                if y > 90
                    y -= 26
                end
                
            else
                y = i.ord
            
            end
        
            nytt_ord.push(y.chr)
        
        end
            
        ny_setning.push(nytt_ord.join)
        nytt_ord = []
    end
    
    puts ny_setning.join(" ")
    
end

puts "Skriv in setning du vil kryptere:"
string = gets.chomp
puts "Flott!"
puts "Skriv in hvor mange flytt i alfabetet:"
number = gets.chomp
number = number.to_i

caesar_cipher(string, number)
    
    
    