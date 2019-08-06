class PigLatinizer

    def initialize(word)
        @word = word.downcase
    end


    def pig
        
        self.multiple_words.map do |word|
            str1 = ""
            if(word.start_with?("a", "e", "i", "o", "u")) 
                # ends with way
                word + "way"
            else 
                # ends with ay
                i = 0; 
                until(word[i] == "a" || word[i] == "e" || word[i] == "i" || word[i] == "o" || word[i] == "u")
                    str1 += word[i]
                    i+=1
                end
                # binding.pry
                str2 = word[str1.length, word.length] + str1 + 'ay'
            end
            
        end
    end

    def multiple_words
        ary = []
        str = ""
        size = @word.length

        size.times do |i|
            if(@word[i] == " ")
                ary << str
                str = ""
            elsif(@word[i] != " ")
                str += @word[i]
            end
        end

        if(@word[size -1] != " ")
            ary << str
        end

        ary

    end

end